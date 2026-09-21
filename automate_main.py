"""
automate_main.py
=================
Entry point. Runs every table config under config/*.yaml, sequentially
(one engine, one query at a time — see db.py/engine.py for why), and
writes one consolidated Excel workbook per table (see report.py).
"""
from dq_runner.config_loader import load_configs
from dq_runner.db import get_engine
from dq_runner.engine import run_table
from dq_runner.report import generate_report
from dq_runner.scoring import evaluate_check
from dq_runner.triage import generate_triage_summary


def run_table_report(engine, table_config, output_dir="output"):
    results = run_table(engine, table_config)

    checks_by_id = {c.check_id: c for c in table_config.checks}
    evaluations = {}
    for r in results:
        if r.status == "ERROR":
            continue
        evaluations[(r.table, r.check_id)] = evaluate_check(checks_by_id[r.check_id], r.data, r.row_count)

    out_path = generate_report(
        table_config, results, evaluations, f"{output_dir}/{table_config.table}/{table_config.table}_report.xlsx"
    )

    n_ok = sum(1 for r in results if r.status == "SUCCESS")
    n_err = sum(1 for r in results if r.status == "ERROR")
    by_status = {}
    for ev in evaluations.values():
        by_status[ev.status] = by_status.get(ev.status, 0) + 1

    print(f"\n{table_config.table}: {n_ok} OK, {n_err} ERROR out of {len(results)} checks")
    print("Scoring breakdown:", ", ".join(f"{k}={v}" for k, v in sorted(by_status.items())))
    print(f"Report -> {out_path}")
    return results, evaluations


def main():
    table_configs = load_configs()
    engine = get_engine()

    all_runs = []
    for table_config in table_configs:
        print(f"\n=== {table_config.table} ({len(table_config.checks)} checks) ===")
        results, evaluations = run_table_report(engine, table_config)
        all_runs.append((table_config, results, evaluations))

    triage_path = generate_triage_summary(all_runs, "output/triage_summary.xlsx")
    print(f"\nTriage summary -> {triage_path}")


if __name__ == "__main__":
    main()
