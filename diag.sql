==================================================COMPLETNESS================================
  WITH cohort_diag AS (
    SELECT *
    FROM rgd_gold_ad.diagnosis
)

SELECT 'gold_row_id' AS column_name, COUNT(*) AS denominator, SUM(CASE WHEN gold_row_id IS NOT NULL THEN 1 ELSE 0 END) AS present_count, ROUND(SUM(CASE WHEN gold_row_id IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_present FROM cohort_diag
UNION ALL
SELECT 'ndid', COUNT(*), SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'psid', COUNT(*), SUM(CASE WHEN psid IS NOT NULL AND TRIM(psid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN psid IS NOT NULL AND TRIM(psid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'udm_unq_id', COUNT(*), SUM(CASE WHEN udm_unq_id IS NOT NULL AND TRIM(udm_unq_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_unq_id IS NOT NULL AND TRIM(udm_unq_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'encounterid', COUNT(*), SUM(CASE WHEN encounterid IS NOT NULL AND TRIM(encounterid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN encounterid IS NOT NULL AND TRIM(encounterid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'diagnosisid', COUNT(*), SUM(CASE WHEN diagnosisid IS NOT NULL AND TRIM(diagnosisid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN diagnosisid IS NOT NULL AND TRIM(diagnosisid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'enc_date', COUNT(*), SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'diag_date', COUNT(*), SUM(CASE WHEN diag_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN diag_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'diag_end_date', COUNT(*), SUM(CASE WHEN diag_end_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN diag_end_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'diag_code', COUNT(*), SUM(CASE WHEN diag_code IS NOT NULL AND TRIM(diag_code) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN diag_code IS NOT NULL AND TRIM(diag_code) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'diag_desc', COUNT(*), SUM(CASE WHEN diag_desc IS NOT NULL AND TRIM(diag_desc) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN diag_desc IS NOT NULL AND TRIM(diag_desc) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'diag_coding_system', COUNT(*), SUM(CASE WHEN diag_coding_system IS NOT NULL AND TRIM(diag_coding_system) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN diag_coding_system IS NOT NULL AND TRIM(diag_coding_system) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'primary_diagnosis_flag', COUNT(*), SUM(CASE WHEN primary_diagnosis_flag IS NOT NULL AND TRIM(primary_diagnosis_flag) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN primary_diagnosis_flag IS NOT NULL AND TRIM(primary_diagnosis_flag) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'udm_active_flag', COUNT(*), SUM(CASE WHEN udm_active_flag IS NOT NULL AND TRIM(udm_active_flag) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_active_flag IS NOT NULL AND TRIM(udm_active_flag) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'source_udm_inc_id', COUNT(*), SUM(CASE WHEN source_udm_inc_id IS NOT NULL AND TRIM(source_udm_inc_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN source_udm_inc_id IS NOT NULL AND TRIM(source_udm_inc_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'cohort_run_id', COUNT(*), SUM(CASE WHEN cohort_run_id IS NOT NULL AND TRIM(cohort_run_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN cohort_run_id IS NOT NULL AND TRIM(cohort_run_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'run_id', COUNT(*), SUM(CASE WHEN run_id IS NOT NULL AND TRIM(run_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN run_id IS NOT NULL AND TRIM(run_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'gold_created_datetime', COUNT(*), SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag
UNION ALL
SELECT 'gold_updated_datetime', COUNT(*), SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_diag;


========CORRECTNESS =========

CORR-002 — separate query, broken down by coding system category (row % + ndid count)

WITH cohort_diag AS (
    SELECT *
    FROM rgd_gold_ad.diagnosis
),
scoped AS (
    SELECT *
    FROM cohort_diag
    WHERE diag_code IS NOT NULL AND TRIM(diag_code) != ''
      AND diag_coding_system IS NOT NULL AND TRIM(diag_coding_system) != ''
),
total AS (
    SELECT COUNT(*) AS total_rows FROM scoped
)
SELECT
    'CORR-002' AS rule_id,
    CASE
        WHEN UPPER(TRIM(diag_coding_system)) = 'ICD-10' THEN 'ICD-10'
        WHEN UPPER(TRIM(diag_coding_system)) = 'ICD-9' THEN 'ICD-9'
        WHEN UPPER(TRIM(diag_coding_system)) = 'NS' THEN 'NS'
        WHEN UPPER(TRIM(diag_coding_system)) LIKE '%BOTH%' THEN 'Matching both ICD-9 and ICD-10'
        ELSE 'Other/Unmapped'
    END AS coding_system_category,
    COUNT(*) AS row_count,
    ROUND(COUNT(*) * 100.0 / MAX(t.total_rows), 2) AS pct_of_total_rows,
    COUNT(DISTINCT ndid) AS distinct_ndid_count,
    SUM(CASE
          WHEN UPPER(TRIM(diag_coding_system)) = 'ICD-9' AND diag_code REGEXP '^[0-9]{3}(\\.[0-9]{1,2})?$' THEN 1
          WHEN UPPER(TRIM(diag_coding_system)) = 'ICD-10' AND diag_code REGEXP '^[A-Z][0-9]{2}(\\.[0-9A-Z]{1,4})?$' THEN 1
          WHEN UPPER(TRIM(diag_coding_system)) LIKE '%BOTH%'
               AND (diag_code REGEXP '^[0-9]{3}(\\.[0-9]{1,2})?$' OR diag_code REGEXP '^[A-Z][0-9]{2}(\\.[0-9A-Z]{1,4})?$') THEN 1
          WHEN UPPER(TRIM(diag_coding_system)) = 'NS' THEN NULL
          ELSE 0
        END) AS numerator_structure_valid,
    ROUND(SUM(CASE
          WHEN UPPER(TRIM(diag_coding_system)) = 'ICD-9' AND diag_code REGEXP '^[0-9]{3}(\\.[0-9]{1,2})?$' THEN 1
          WHEN UPPER(TRIM(diag_coding_system)) = 'ICD-10' AND diag_code REGEXP '^[A-Z][0-9]{2}(\\.[0-9A-Z]{1,4})?$' THEN 1
          WHEN UPPER(TRIM(diag_coding_system)) LIKE '%BOTH%'
               AND (diag_code REGEXP '^[0-9]{3}(\\.[0-9]{1,2})?$' OR diag_code REGEXP '^[A-Z][0-9]{2}(\\.[0-9A-Z]{1,4})?$') THEN 1
          WHEN UPPER(TRIM(diag_coding_system)) = 'NS' THEN NULL
          ELSE 0
        END) * 100.0 / COUNT(*), 2) AS pct_structure_valid
FROM scoped, total t
GROUP BY coding_system_category
ORDER BY coding_system_category;

CORR-001 — data type conformance vs. dictionary (metadata-based, separate query)

WITH dictionary AS (
    SELECT 'ndid' AS column_name, 'VARCHAR' AS expected_data_type UNION ALL
    SELECT 'encounterid', 'VARCHAR' UNION ALL
    SELECT 'diagnosisid', 'VARCHAR' UNION ALL
    SELECT 'enc_date', 'DATE' UNION ALL
    SELECT 'diag_date', 'DATE' UNION ALL
    SELECT 'diag_end_date', 'DATE' UNION ALL
    SELECT 'diag_code', 'VARCHAR' UNION ALL
    SELECT 'diag_desc', 'VARCHAR' UNION ALL
    SELECT 'diag_coding_system', 'VARCHAR' UNION ALL
    SELECT 'primary_diagnosis_flag', 'BOOLEAN'
),
actual AS (
    SELECT COLUMN_NAME AS column_name, UPPER(DATA_TYPE) AS actual_data_type
    FROM information_schema.columns
    WHERE table_schema = 'rgd_gold_ad' AND table_name = 'diagnosis'
)
SELECT
    'CORR-001' AS rule_id,
    d.column_name,
    d.expected_data_type,
    a.actual_data_type,
    CASE
        WHEN d.expected_data_type = 'VARCHAR' AND a.actual_data_type IN ('VARCHAR','TEXT','CHAR') THEN 'MATCH'
        WHEN d.expected_data_type = 'DATE' AND a.actual_data_type IN ('DATE','DATETIME') THEN 'MATCH'
        WHEN d.expected_data_type = 'BOOLEAN' AND a.actual_data_type IN ('BOOLEAN','TINYINT','BIT') THEN 'MATCH'
        ELSE 'MISMATCH'
    END AS conformance_status
FROM dictionary d
LEFT JOIN actual a ON d.column_name = a.column_name
ORDER BY conformance_status DESC, d.column_name;


WITH cohort_diag AS (
    SELECT *
    FROM rgd_gold_ad.diagnosis
)
SELECT 'CORR-009-analog', 'diag_date <= diag_end_date (if end date present)',
       COUNT(*),
       SUM(CASE WHEN diag_end_date IS NULL OR diag_date <= diag_end_date THEN 1 ELSE 0 END),
       ROUND(SUM(CASE WHEN diag_end_date IS NULL OR diag_date <= diag_end_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2),
       '100% valid'
FROM cohort_diag
WHERE diag_date IS NOT NULL
UNION ALL
SELECT 'CORR-007', 'diag_date >= patient year_of_birth',
       COUNT(*),
       SUM(CASE WHEN YEAR(d.diag_date) >= p.year_of_birth THEN 1 ELSE 0 END),
       ROUND(SUM(CASE WHEN YEAR(d.diag_date) >= p.year_of_birth THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2),
       '100% valid'
FROM cohort_diag d
LEFT JOIN rgd_gold_ad.patients p ON d.ndid = p.ndid
WHERE d.diag_date IS NOT NULL
UNION ALL
SELECT 'CORR-008', 'diag_date <= enc_date + 30 days',
       COUNT(*),
       SUM(CASE WHEN diag_date <= DATE_ADD(enc_date, INTERVAL 30 DAY) THEN 1 ELSE 0 END),
       ROUND(SUM(CASE WHEN diag_date <= DATE_ADD(enc_date, INTERVAL 30 DAY) THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2),
       '>=90% within window'
FROM cohort_diag
WHERE diag_date IS NOT NULL AND enc_date IS NOT NULL
UNION ALL
SELECT 'CORR-flag', 'primary_diagnosis_flag valid value (Y/N)',
       COUNT(*),
       SUM(CASE WHEN UPPER(TRIM(primary_diagnosis_flag)) IN ('Y','N') THEN 1 ELSE 0 END),
       ROUND(SUM(CASE WHEN UPPER(TRIM(primary_diagnosis_flag)) IN ('Y','N') THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2),
       '100% valid'
FROM cohort_diag
WHERE primary_diagnosis_flag IS NOT NULL AND TRIM(primary_diagnosis_flag) != ''
UNION ALL
SELECT 'CORR-006', 'Dates follow valid format (no zero-dates/sentinel values, year 1900-current)',
       t.denominator,
       t.numerator_valid,
       ROUND(t.numerator_valid * 100.0 / NULLIF(t.denominator, 0), 2),
       '0% invalid formats'
FROM (
    SELECT
        SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END)
      + SUM(CASE WHEN diag_date IS NOT NULL THEN 1 ELSE 0 END)
      + SUM(CASE WHEN diag_end_date IS NOT NULL THEN 1 ELSE 0 END)
      + SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END)
      + SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) AS denominator,
        SUM(CASE WHEN enc_date IS NOT NULL AND enc_date != '0000-00-00' AND YEAR(enc_date) BETWEEN 1900 AND YEAR(CURDATE()) THEN 1 ELSE 0 END)
      + SUM(CASE WHEN diag_date IS NOT NULL AND diag_date != '0000-00-00' AND YEAR(diag_date) BETWEEN 1900 AND YEAR(CURDATE()) THEN 1 ELSE 0 END)
      + SUM(CASE WHEN diag_end_date IS NOT NULL AND diag_end_date != '0000-00-00' AND YEAR(diag_end_date) BETWEEN 1900 AND YEAR(CURDATE()) THEN 1 ELSE 0 END)
      + SUM(CASE WHEN gold_created_datetime IS NOT NULL AND YEAR(gold_created_datetime) BETWEEN 1900 AND YEAR(CURDATE()) THEN 1 ELSE 0 END)
      + SUM(CASE WHEN gold_updated_datetime IS NOT NULL AND YEAR(gold_updated_datetime) BETWEEN 1900 AND YEAR(CURDATE()) THEN 1 ELSE 0 END) AS numerator_valid
    FROM cohort_diag
) t
UNION ALL
SELECT 'CORR-010', 'No diagnosis events after patient deceased date',
       t.denominator,
       t.numerator_valid,
       ROUND(t.numerator_valid * 100.0 / NULLIF(t.denominator, 0), 2),
       '100% valid'
FROM (
    SELECT
        COUNT(*) AS denominator,
        SUM(CASE WHEN COALESCE(d.diag_date, d.enc_date) <= p.death_date THEN 1 ELSE 0 END) AS numerator_valid
    FROM cohort_diag d
    INNER JOIN rgd_gold_ad.patients p ON d.ndid = p.ndid
    WHERE p.death_date IS NOT NULL
      AND COALESCE(d.diag_date, d.enc_date) IS NOT NULL
) t;


===CONCORDANCE============
  
SELECT 'CONC-001' AS rule_id, 'ndid links to patients' AS rule_name,
       COUNT(*) AS denominator,
       SUM(CASE WHEN p.ndid IS NULL THEN 1 ELSE 0 END) AS numerator,
       ROUND(SUM(CASE WHEN p.ndid IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct,
       '0% orphaned' AS threshold
FROM rgd_gold_ad.diagnosis d
LEFT JOIN rgd_gold_ad.patients p ON d.ndid = p.ndid

UNION ALL
SELECT 'CONC-002', 'encounterid links to encounters',
       COUNT(*),
       SUM(CASE WHEN e.encounterid IS NULL THEN 1 ELSE 0 END),
       ROUND(SUM(CASE WHEN e.encounterid IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2),
       '0% orphaned'
FROM rgd_gold_ad.diagnosis d
LEFT JOIN rgd_gold_ad.encounters e ON d.encounterid = e.encounterid;

WITH ad_mci_cohort AS (
    SELECT DISTINCT ndid
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9',
        'G31.84',
        'g30.0','g30.1','g30.8','g30.9',
        'g300','g301','g308','g309',
        'g31.84','g3184',
        '331.0','331.83',
        '294.1','294.10','294.11',
        '0331.0','0331.83',
        '0294.1','0294.10','0294.11',
        '03310','033183',
        '02941','029410','029411'
    )
),
ad_med_patients AS (
    SELECT DISTINCT ndid
    FROM rgd_gold_ad.medication
    WHERE UPPER(med_name) LIKE '%DONANEMAB%' OR UPPER(med_name) LIKE '%KISUNLA%'
       OR UPPER(med_name) LIKE '%LECANEMAB%' OR UPPER(med_name) LIKE '%LEQEMBI%'
       OR UPPER(med_name) LIKE '%ADUCANUMAB%' OR UPPER(med_name) LIKE '%ADUHELM%'
)
SELECT
    'CONC-006' AS rule_id,
    'AD/MCI diagnosed patients who are on AD medication (Kisunla/Leqembi/Aduhelm)' AS rule_name,
    (SELECT COUNT(*) FROM ad_mci_cohort) AS denominator_ad_mci_ndids,
    (SELECT COUNT(*) FROM ad_mci_cohort WHERE ndid IN (SELECT ndid FROM ad_med_patients)) AS numerator_on_ad_meds,
    ROUND(
        (SELECT COUNT(*) FROM ad_mci_cohort WHERE ndid IN (SELECT ndid FROM ad_med_patients)) * 100.0
        / NULLIF((SELECT COUNT(*) FROM ad_mci_cohort), 0), 2
    ) AS pct_on_ad_meds,
    '<10% untreated is expected (some may be untreated or on trial)' AS threshold;
    


WITH ad_mci_cohort AS (
    SELECT DISTINCT ndid
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9',
        'G31.84',
        'g30.0','g30.1','g30.8','g30.9',
        'g300','g301','g308','g309',
        'g31.84','g3184',
        '331.0','331.83',
        '294.1','294.10','294.11',
        '0331.0','0331.83',
        '0294.1','0294.10','0294.11',
        '03310','033183',
        '02941','029410','029411'
    )
),
ad_med_by_drug AS (
    SELECT DISTINCT ndid,
        CASE
            WHEN UPPER(med_name) LIKE '%DONANEMAB%' OR UPPER(med_name) LIKE '%KISUNLA%' THEN 'Kisunla'
            WHEN UPPER(med_name) LIKE '%LECANEMAB%' OR UPPER(med_name) LIKE '%LEQEMBI%' THEN 'Leqembi'
            WHEN UPPER(med_name) LIKE '%ADUCANUMAB%' OR UPPER(med_name) LIKE '%ADUHELM%' THEN 'Aduhelm'
        END AS ad_drug
    FROM rgd_gold_ad.medication
    WHERE UPPER(med_name) LIKE '%DONANEMAB%' OR UPPER(med_name) LIKE '%KISUNLA%'
       OR UPPER(med_name) LIKE '%LECANEMAB%' OR UPPER(med_name) LIKE '%LEQEMBI%'
       OR UPPER(med_name) LIKE '%ADUCANUMAB%' OR UPPER(med_name) LIKE '%ADUHELM%'
)
SELECT
    m.ad_drug,
    (SELECT COUNT(*) FROM ad_mci_cohort) AS ad_mci_denominator,
    COUNT(DISTINCT c.ndid) AS numerator_on_this_drug,
    ROUND(COUNT(DISTINCT c.ndid) * 100.0 / (SELECT COUNT(*) FROM ad_mci_cohort), 2) AS pct_on_this_drug
FROM ad_mci_cohort c
INNER JOIN ad_med_by_drug m ON c.ndid = m.ndid
GROUP BY m.ad_drug
ORDER BY m.ad_drug;

=============CREDIBILITY FINALLLLL==========
PLAUS-001a — AD age credibility (≥60 credible / <50 flagged)

WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
ad_dx AS (
    SELECT ndid, MIN(diag_date) AS ad_diag_date
    FROM ad_mci_diag
    WHERE dx_type = 'AD'
    GROUP BY ndid
),
ad_age AS (
    SELECT a.ndid, YEAR(a.ad_diag_date) - p.year_of_birth AS age_at_diagnosis
    FROM ad_dx a
    INNER JOIN rgd_gold_ad.patients p ON a.ndid = p.ndid
    WHERE p.year_of_birth IS NOT NULL
)
SELECT 'PLAUS-001' AS rule_id,
       COUNT(*) AS denominator_ad_ndids,
       SUM(CASE WHEN age_at_diagnosis >= 60 THEN 1 ELSE 0 END) AS numerator_credible_60plus,
       ROUND(SUM(CASE WHEN age_at_diagnosis >= 60 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_credible,
       SUM(CASE WHEN age_at_diagnosis < 50 THEN 1 ELSE 0 END) AS numerator_flagged_under50,
       ROUND(SUM(CASE WHEN age_at_diagnosis < 50 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_flagged,
       '<2% flagged is expected (early-onset exists)' AS threshold
FROM ad_age;

PLAUS-002a — MCI age credibility (≥55 credible / <45 flagged)

WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
mci_dx AS (
    SELECT ndid, MIN(diag_date) AS mci_diag_date
    FROM ad_mci_diag
    WHERE dx_type = 'MCI'
    GROUP BY ndid
),
mci_age AS (
    SELECT m.ndid, YEAR(m.mci_diag_date) - p.year_of_birth AS age_at_diagnosis
    FROM mci_dx m
    INNER JOIN rgd_gold_ad.patients p ON m.ndid = p.ndid
    WHERE p.year_of_birth IS NOT NULL
)
SELECT 'PLAUS-002' AS rule_id,
       COUNT(*) AS denominator_mci_ndids,
       SUM(CASE WHEN age_at_diagnosis >= 55 THEN 1 ELSE 0 END) AS numerator_credible_55plus,
       ROUND(SUM(CASE WHEN age_at_diagnosis >= 55 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_credible,
       SUM(CASE WHEN age_at_diagnosis < 45 THEN 1 ELSE 0 END) AS numerator_flagged_under45,
       ROUND(SUM(CASE WHEN age_at_diagnosis < 45 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_flagged,
       '<1% flagged is expected' AS threshold
FROM mci_age;


PLAUS-005 — MCI should precede AD
WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
dx_dates AS (
    SELECT ndid,
           MIN(CASE WHEN dx_type = 'AD' THEN diag_date END) AS first_ad_date,
           MIN(CASE WHEN dx_type = 'MCI' THEN diag_date END) AS first_mci_date
    FROM ad_mci_diag
    GROUP BY ndid
),
both_dx AS (
    SELECT * FROM dx_dates WHERE first_ad_date IS NOT NULL AND first_mci_date IS NOT NULL
)
SELECT 'PLAUS-005' AS rule_id,
       COUNT(*) AS denominator_ndids_with_both_dx,
       SUM(CASE WHEN first_mci_date < first_ad_date THEN 1 ELSE 0 END) AS mci_before_ad_correct,
       ROUND(SUM(CASE WHEN first_mci_date < first_ad_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_correct_order,
       SUM(CASE WHEN first_mci_date = first_ad_date THEN 1 ELSE 0 END) AS concurrent_dx,
       ROUND(SUM(CASE WHEN first_mci_date = first_ad_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_concurrent,
       SUM(CASE WHEN first_mci_date > first_ad_date THEN 1 ELSE 0 END) AS mci_after_ad_violation,
       ROUND(SUM(CASE WHEN first_mci_date > first_ad_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_violation,
       '<10% violations (concurrent Dx acceptable)' AS threshold
FROM both_dx;

PLAUS-007/008 — medication distribution across AD/MCI cohort

WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
cohort AS (
    SELECT DISTINCT ndid FROM ad_mci_diag
),
med_ndid AS (
    SELECT DISTINCT c.ndid, UPPER(TRIM(m.med_name)) AS med_name_std
    FROM cohort c
    INNER JOIN rgd_gold_ad.medication m ON c.ndid = m.ndid
    WHERE m.med_name IS NOT NULL AND TRIM(m.med_name) != ''
)
SELECT
    med_name_std AS medicine,
    (SELECT COUNT(*) FROM cohort) AS total_cohort_ndids,
    COUNT(DISTINCT ndid) AS ndid_count,
    ROUND(COUNT(DISTINCT ndid) * 100.0 / (SELECT COUNT(*) FROM cohort), 2) AS pct_of_cohort
FROM med_ndid
GROUP BY med_name_std
ORDER BY pct_of_cohort DESC;

PLAUS-013a — % of cohort with any biomarker test

WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
cohort AS (
    SELECT DISTINCT ndid FROM ad_mci_diag
)
SELECT 'PLAUS-013a' AS rule_id,
       COUNT(DISTINCT c.ndid) AS denominator,
       COUNT(DISTINCT b.ndid) AS numerator_with_biomarker,
       ROUND(COUNT(DISTINCT b.ndid) * 100.0 / COUNT(DISTINCT c.ndid), 2) AS pct_with_biomarker
FROM cohort c
LEFT JOIN rwe.amyloid_final_classification_all b ON c.ndid = b.ndid;

PLAUS-013b — biomarker_type distribution (Imaging/Labs/Genetic)
WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
cohort AS (
    SELECT DISTINCT ndid FROM ad_mci_diag
)
SELECT
    biomarker_type,
    COUNT(DISTINCT ndid) AS ndid_count,
    ROUND(COUNT(DISTINCT ndid) * 100.0 /
        (SELECT COUNT(DISTINCT ndid) FROM rwe.amyloid_final_classification_all WHERE ndid IN (SELECT ndid FROM cohort)), 2
    ) AS pct_of_tested_ndids
FROM rwe.amyloid_final_classification_all
WHERE ndid IN (SELECT ndid FROM cohort)
GROUP BY biomarker_type
ORDER BY ndid_count DESC;

WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
cohort AS (
    SELECT DISTINCT ndid FROM ad_mci_diag
),
total_biomarker_types AS (
    SELECT COUNT(DISTINCT biomarker_type) AS n_types
    FROM rwe.amyloid_final_classification_all
    WHERE ndid IN (SELECT ndid FROM cohort)
      AND biomarker_type IS NOT NULL
),
ndid_type_counts AS (
    SELECT ndid, COUNT(DISTINCT biomarker_type) AS n_types_present
    FROM rwe.amyloid_final_classification_all
    WHERE ndid IN (SELECT ndid FROM cohort)
      AND biomarker_type IS NOT NULL
    GROUP BY ndid
),
tested_ndids AS (
    SELECT COUNT(DISTINCT ndid) AS n FROM rwe.amyloid_final_classification_all WHERE ndid IN (SELECT ndid FROM cohort)
)

-- Row 1: overall summary (total cohort, total tested, ndids with ALL biomarker types)
SELECT
    'SUMMARY' AS biomarker_type,
    (SELECT COUNT(*) FROM cohort) AS total_cohort_ndids,
    (SELECT n FROM tested_ndids) AS ndid_count_any_biomarker,
    ROUND((SELECT n FROM tested_ndids) * 100.0 / (SELECT COUNT(*) FROM cohort), 2) AS pct_of_cohort,
    (SELECT COUNT(*) FROM ndid_type_counts WHERE n_types_present = (SELECT n_types FROM total_biomarker_types)) AS ndid_count_all_biomarker_types,
    ROUND((SELECT COUNT(*) FROM ndid_type_counts WHERE n_types_present = (SELECT n_types FROM total_biomarker_types)) * 100.0
          / (SELECT COUNT(*) FROM cohort), 2) AS pct_with_all_biomarker_types

UNION ALL

-- Row 2 onwards: per biomarker_type breakdown
SELECT
    biomarker_type,
    (SELECT COUNT(*) FROM cohort) AS total_cohort_ndids,
    COUNT(DISTINCT ndid) AS ndid_count_any_biomarker,
    ROUND(COUNT(DISTINCT ndid) * 100.0 / (SELECT n FROM tested_ndids), 2) AS pct_of_cohort,
    NULL AS ndid_count_all_biomarker_types,
    NULL AS pct_with_all_biomarker_types
FROM rwe.amyloid_final_classification_all
WHERE ndid IN (SELECT ndid FROM cohort)
GROUP BY biomarker_type
ORDER BY ndid_count_any_biomarker DESC;

PLAUS-013c — test_name_std distribution

WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
cohort AS (
    SELECT DISTINCT ndid FROM ad_mci_diag
)
SELECT
    test_name_std,
    COUNT(*) AS record_count,
    COUNT(DISTINCT ndid) AS ndid_count,
    ROUND(COUNT(DISTINCT ndid) * 100.0 /
        (SELECT COUNT(DISTINCT ndid) FROM rwe.amyloid_final_classification_all WHERE ndid IN (SELECT ndid FROM cohort)), 2
    ) AS pct_of_tested_ndids
FROM rwe.amyloid_final_classification_all
WHERE ndid IN (SELECT ndid FROM cohort)
GROUP BY test_name_std
ORDER BY ndid_count DESC;




PLAUS-013e.1 — study_name / img_modality distribution
WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
  
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
cohort AS (
    SELECT DISTINCT ndid FROM ad_mci_diag
),
imaged_total AS (
    SELECT COUNT(DISTINCT ndid) AS n_imaged_ndids
    FROM rgd_gold_ad.radiology
    WHERE ndid IN (SELECT ndid FROM cohort)
),
study_stats AS (
    SELECT
        study_name,
        img_modality,
        COUNT(*) AS record_count,
        COUNT(DISTINCT ndid) AS ndid_count,
        ROUND(COUNT(DISTINCT ndid) * 100.0 / (SELECT n_imaged_ndids FROM imaged_total), 2) AS pct_of_imaged_ndids
    FROM rgd_gold_ad.radiology
    WHERE ndid IN (SELECT ndid FROM cohort)
    GROUP BY study_name, img_modality
)
SELECT
    CASE WHEN pct_of_imaged_ndids >= 5 THEN study_name ELSE '<5% (grouped)' END AS study_name,
    CASE WHEN pct_of_imaged_ndids >= 5 THEN img_modality ELSE '<5% (grouped)' END AS img_modality,
    SUM(record_count) AS record_count,
    SUM(ndid_count) AS ndid_count,
    ROUND(SUM(ndid_count) * 100.0 / (SELECT n_imaged_ndids FROM imaged_total), 2) AS pct_of_imaged_ndids
FROM study_stats
GROUP BY
    CASE WHEN pct_of_imaged_ndids >= 5 THEN study_name ELSE '<5% (grouped)' END,
    CASE WHEN pct_of_imaged_ndids >= 5 THEN img_modality ELSE '<5% (grouped)' END
ORDER BY ndid_count DESC;


PLAUS-013e.2 — % of cohort without imaging within 12 months of diagnosis

WITH ad_mci_diag AS (
    SELECT
        ndid, diag_code, diag_date,
        CASE
            WHEN diag_code IN ('G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
                                'g300','g301','g308','g309','331.0','0331.0','03310',
                                '294.1','294.10','294.11','0294.1','0294.10','0294.11',
                                '02941','029410','029411') THEN 'AD'
            WHEN diag_code IN ('G31.84','g31.84','g3184','331.83','0331.83','033183') THEN 'MCI'
        END AS dx_type
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
cohort_landmark AS (
    SELECT ndid, MIN(diag_date) AS first_dx_date FROM ad_mci_diag GROUP BY ndid
),
imaging_window AS (
    SELECT cl.ndid,
           MIN(ABS(DATEDIFF(r.img_date, cl.first_dx_date))) AS min_days_diff
    FROM cohort_landmark cl
    LEFT JOIN rgd_gold_ad.radiology r ON cl.ndid = r.ndid AND r.img_date IS NOT NULL
    GROUP BY cl.ndid
)
SELECT 'PLAUS-013e2' AS rule_id,
       COUNT(*) AS denominator,
       SUM(CASE WHEN min_days_diff IS NULL OR min_days_diff > 365 THEN 1 ELSE 0 END) AS numerator_without_imaging_12mo,
       ROUND(SUM(CASE WHEN min_days_diff IS NULL OR min_days_diff > 365 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_without_imaging,
       '<40% expected (not always in EHR)' AS threshold
FROM imaging_window;






===========CURRENCY=========

WITH per_patient AS (
    SELECT ndid, COUNT(*) AS diag_count
    FROM rgd_gold_ad.diagnosis
    WHERE ndid IS NOT NULL
    GROUP BY ndid
)

SELECT 'cohort_run_id_distribution' AS check_name, CAST(cohort_run_id AS CHAR) AS attribute, CAST(COUNT(*) AS CHAR) AS value
FROM rgd_gold_ad.diagnosis
GROUP BY cohort_run_id

UNION ALL

SELECT 'gold_created_date_distribution', CAST(DATE(gold_created_datetime) AS CHAR), CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.diagnosis
GROUP BY DATE(gold_created_datetime)

UNION ALL

SELECT 'source_id_duplication', 'total_records', CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.diagnosis
UNION ALL
SELECT 'source_id_duplication', 'distinct_source_ids', CAST(COUNT(DISTINCT source_udm_inc_id) AS CHAR)
FROM rgd_gold_ad.diagnosis
UNION ALL
SELECT 'source_id_duplication', 'duplicate_source_count', CAST(COUNT(*) - COUNT(DISTINCT source_udm_inc_id) AS CHAR)
FROM rgd_gold_ad.diagnosis

UNION ALL

SELECT 'update_status', 'total_records', CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.diagnosis
UNION ALL
SELECT 'update_status', 'never_updated_count', CAST(SUM(CASE WHEN gold_updated_datetime IS NULL THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.diagnosis
UNION ALL
SELECT 'update_status', 'updated_count', CAST(SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.diagnosis

UNION ALL

SELECT 'per_patient_diag_summary', 'total_patients', CAST(COUNT(*) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_diag_summary', 'avg_diag_per_patient', CAST(ROUND(AVG(diag_count), 1) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_diag_summary', 'max_diag_per_patient', CAST(MAX(diag_count) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_diag_summary', 'patients_with_1_diag', CAST(SUM(CASE WHEN diag_count = 1 THEN 1 ELSE 0 END) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_diag_summary', 'patients_with_over_50_diag', CAST(SUM(CASE WHEN diag_count > 50 THEN 1 ELSE 0 END) AS CHAR) FROM per_patient

UNION ALL

SELECT 'run_type_distribution', CASE WHEN run_id LIKE 'manual%' THEN 'Manual' ELSE 'Scheduled/Other' END, CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.diagnosis
GROUP BY CASE WHEN run_id LIKE 'manual%' THEN 'Manual' ELSE 'Scheduled/Other' END

UNION ALL

SELECT 'future_date_check', 'future_diag_dates', CAST(SUM(CASE WHEN diag_date > CURRENT_DATE() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.diagnosis
UNION ALL
SELECT 'future_date_check', 'future_diag_end_dates', CAST(SUM(CASE WHEN diag_end_date > CURRENT_DATE() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.diagnosis

ORDER BY check_name;
