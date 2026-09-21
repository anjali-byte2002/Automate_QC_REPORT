"""
main_pipeline.py
=================
Orchestrator for the 5 newly-updated tables (diagnosis, encounters,
procedures, patients, medication): runs every check (all 5 C's — no
dimension filtering, unlike 2C.PY), then hands the results to
excel_generator.py (per-table workbook) and docx_generator.py (per-table
narrative report).

Reuses the existing dq_runner package (config_loader/db/engine/scoring)
unchanged — only the OUTPUT layer is new for this deliverable.
"""
from dq_runner.config_loader import load_config
from dq_runner.db import get_engine
from dq_runner.engine import run_table
from dq_runner.scoring import evaluate_check

from excel_generator import generate_workbook
from docx_generator import generate_docx_report

TABLES = [
    "config/diagnosis.yaml",
    "config/procedures.yaml",
    "config/patients.yaml",
    "config/medication.yaml",
    "config/labs.yaml",
    "config/radiology.yaml",
    "config/family_history.yaml",
    "config/past_medical_history.yaml",
    "config/surgical_history.yaml",
    "config/vitals.yaml",
    "config/ros.yaml",
]

# Excel is generated for every table every run (cheap, and the point of
# this pipeline). Docx is only built for tables listed here — per
# instruction, this run is Excel-only for all remaining tables (docx
# already reviewed/confirmed for diagnosis and encounters separately).
DOCX_TABLES = set()


def run_table_pipeline(engine, config_path):
    table_config = load_config(config_path)
    print(f"\n=== {table_config.table} ({len(table_config.checks)} checks) ===")
    results = run_table(engine, table_config)

    checks_by_id = {c.check_id: c for c in table_config.checks}
    evaluations = {}
    for r in results:
        if r.status == "ERROR":
            continue
        evaluations[(r.table, r.check_id)] = evaluate_check(checks_by_id[r.check_id], r.data, r.row_count)

    n_ok = sum(1 for r in results if r.status == "SUCCESS")
    n_err = sum(1 for r in results if r.status == "ERROR")
    print(f"{table_config.table}: {n_ok} OK, {n_err} ERROR out of {len(results)} checks")

    xlsx_path = generate_workbook(table_config, results, evaluations, output_dir="output_excel")
    print(f"Excel -> {xlsx_path}")

    if table_config.table in DOCX_TABLES:
        docx_path = generate_docx_report(table_config, results, evaluations, output_dir="output_docx")
        print(f"Docx  -> {docx_path}")

    return table_config, results, evaluations


def main():
    engine = get_engine()
    all_runs = []
    for config_path in TABLES:
        all_runs.append(run_table_pipeline(engine, config_path))
    return all_runs


if __name__ == "__main__":
    main()
