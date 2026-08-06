
===========COMPLETNESS=======
  WITH cohort_med AS (
    SELECT *
    FROM rgd_gold_ad.medication
)

SELECT 'gold_row_id' AS column_name, COUNT(*) AS denominator, SUM(CASE WHEN gold_row_id IS NOT NULL THEN 1 ELSE 0 END) AS present_count, ROUND(SUM(CASE WHEN gold_row_id IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_present FROM cohort_med
UNION ALL
SELECT 'ndid', COUNT(*), SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'psid', COUNT(*), SUM(CASE WHEN psid IS NOT NULL AND TRIM(psid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN psid IS NOT NULL AND TRIM(psid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'udm_unq_id', COUNT(*), SUM(CASE WHEN udm_unq_id IS NOT NULL AND TRIM(udm_unq_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_unq_id IS NOT NULL AND TRIM(udm_unq_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'encounterid', COUNT(*), SUM(CASE WHEN encounterid IS NOT NULL AND TRIM(encounterid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN encounterid IS NOT NULL AND TRIM(encounterid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'medicationid', COUNT(*), SUM(CASE WHEN medicationid IS NOT NULL AND TRIM(medicationid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN medicationid IS NOT NULL AND TRIM(medicationid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'enc_date', COUNT(*), SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'medication_start_date', COUNT(*), SUM(CASE WHEN medication_start_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN medication_start_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'medication_end_date', COUNT(*), SUM(CASE WHEN medication_end_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN medication_end_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'fill_date', COUNT(*), SUM(CASE WHEN fill_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN fill_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_coding_system', COUNT(*), SUM(CASE WHEN med_coding_system IS NOT NULL AND TRIM(med_coding_system) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_coding_system IS NOT NULL AND TRIM(med_coding_system) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_code', COUNT(*), SUM(CASE WHEN med_code IS NOT NULL AND TRIM(med_code) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_code IS NOT NULL AND TRIM(med_code) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_name', COUNT(*), SUM(CASE WHEN med_name IS NOT NULL AND TRIM(med_name) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_name IS NOT NULL AND TRIM(med_name) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_formulation', COUNT(*), SUM(CASE WHEN med_formulation IS NOT NULL AND TRIM(med_formulation) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_formulation IS NOT NULL AND TRIM(med_formulation) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_route', COUNT(*), SUM(CASE WHEN med_route IS NOT NULL AND TRIM(med_route) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_route IS NOT NULL AND TRIM(med_route) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_strength', COUNT(*), SUM(CASE WHEN med_strength IS NOT NULL AND TRIM(med_strength) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_strength IS NOT NULL AND TRIM(med_strength) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_strength_unit', COUNT(*), SUM(CASE WHEN med_strength_unit IS NOT NULL AND TRIM(med_strength_unit) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_strength_unit IS NOT NULL AND TRIM(med_strength_unit) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_frequency', COUNT(*), SUM(CASE WHEN med_frequency IS NOT NULL AND TRIM(med_frequency) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_frequency IS NOT NULL AND TRIM(med_frequency) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'prescribed_quantity', COUNT(*), SUM(CASE WHEN prescribed_quantity IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN prescribed_quantity IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_days_supply', COUNT(*), SUM(CASE WHEN med_days_supply IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_days_supply IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_refills', COUNT(*), SUM(CASE WHEN med_refills IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_refills IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_direction', COUNT(*), SUM(CASE WHEN med_direction IS NOT NULL AND TRIM(med_direction) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_direction IS NOT NULL AND TRIM(med_direction) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_fill_type', COUNT(*), SUM(CASE WHEN med_fill_type IS NOT NULL AND TRIM(med_fill_type) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_fill_type IS NOT NULL AND TRIM(med_fill_type) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'med_status', COUNT(*), SUM(CASE WHEN med_status IS NOT NULL AND TRIM(med_status) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_status IS NOT NULL AND TRIM(med_status) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'udm_active_flag', COUNT(*), SUM(CASE WHEN udm_active_flag IS NOT NULL AND TRIM(udm_active_flag) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_active_flag IS NOT NULL AND TRIM(udm_active_flag) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'source_udm_inc_id', COUNT(*), SUM(CASE WHEN source_udm_inc_id IS NOT NULL AND TRIM(source_udm_inc_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN source_udm_inc_id IS NOT NULL AND TRIM(source_udm_inc_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'cohort_run_id', COUNT(*), SUM(CASE WHEN cohort_run_id IS NOT NULL AND TRIM(cohort_run_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN cohort_run_id IS NOT NULL AND TRIM(cohort_run_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'run_id', COUNT(*), SUM(CASE WHEN run_id IS NOT NULL AND TRIM(run_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN run_id IS NOT NULL AND TRIM(run_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'gold_created_datetime', COUNT(*), SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'gold_updated_datetime', COUNT(*), SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med;


1. COMP-005 — med_name completeness with med_code

===========COMP-005: med_name with med_code=======
WITH cohort_med AS (
    SELECT *
    FROM rgd_gold_ad.medication
    WHERE med_name IS NOT NULL AND TRIM(med_name) != ''
)

SELECT 
    COUNT(*) AS total_med_name_rows,
    SUM(CASE WHEN med_code IS NOT NULL AND TRIM(med_code) != '' THEN 1 ELSE 0 END) AS with_med_code,
    ROUND(SUM(CASE WHEN med_code IS NOT NULL AND TRIM(med_code) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_with_med_code
FROM cohort_med;


===========COMP-009: AD/MCI on-treatment completeness (med_name, med_strength, medication_start_date)=======
WITH ad_mci_cohort AS (
    SELECT DISTINCT ndid
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','g30.0','g30.1','g30.8','g30.9',
        'g300','g301','g308','g309',
        '331.0','0331.0','03310',
        '294.1','294.10','294.11','0294.1','0294.10','0294.11',
        '02941','029410','029411'
    )
),
cohort_med AS (
    SELECT m.*
    FROM rgd_gold_ad.medication m
    INNER JOIN ad_mci_cohort c ON m.ndid = c.ndid
)

SELECT 'med_name' AS column_name, COUNT(*) AS denominator, SUM(CASE WHEN med_name IS NOT NULL AND TRIM(med_name) != '' THEN 1 ELSE 0 END) AS present_count, ROUND(SUM(CASE WHEN med_name IS NOT NULL AND TRIM(med_name) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_present FROM cohort_med
UNION ALL
SELECT 'med_strength', COUNT(*), SUM(CASE WHEN med_strength IS NOT NULL AND TRIM(med_strength) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN med_strength IS NOT NULL AND TRIM(med_strength) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'medication_start_date', COUNT(*), SUM(CASE WHEN medication_start_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN medication_start_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_med
UNION ALL
SELECT 'all_3_present (med_name+strength+start_date)', COUNT(*),
    SUM(CASE WHEN med_name IS NOT NULL AND TRIM(med_name) != ''
              AND med_strength IS NOT NULL AND TRIM(med_strength) != ''
              AND medication_start_date IS NOT NULL THEN 1 ELSE 0 END),
    ROUND(SUM(CASE WHEN med_name IS NOT NULL AND TRIM(med_name) != ''
              AND med_strength IS NOT NULL AND TRIM(med_strength) != ''
              AND medication_start_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM cohort_med;

=========2.3a — Implausible / ambiguous date format flags==================

WITH date_check AS (
    SELECT 
        ndid, drug_name, enc_date, discontinuation_date,
        CASE 
            WHEN enc_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' THEN 'ISO_yyyy-mm-dd'
            WHEN enc_date REGEXP '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$' THEN 'NUMERIC_DASHED'
            WHEN enc_date REGEXP '^[0-9]{1,2} [A-Za-z]+ [0-9]{4}$' THEN 'TEXT_MONTH'
            WHEN enc_date IS NULL THEN 'NULL'
            ELSE 'UNRECOGNIZED'
        END AS enc_date_format,
        CASE 
            WHEN discontinuation_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' THEN 'ISO_yyyy-mm-dd'
            WHEN discontinuation_date REGEXP '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$' THEN 'NUMERIC_DASHED'
            WHEN discontinuation_date REGEXP '^[0-9]{1,2} [A-Za-z]+ [0-9]{4}$' THEN 'TEXT_MONTH'
            WHEN discontinuation_date IS NULL THEN 'NULL'
            ELSE 'UNRECOGNIZED'
        END AS discontinuation_date_format,
        CAST(SUBSTRING_INDEX(enc_date, '-', 1) AS UNSIGNED) AS enc_part1,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(enc_date, '-', 2), '-', -1) AS UNSIGNED) AS enc_part2,
        CAST(SUBSTRING_INDEX(discontinuation_date, '-', 1) AS UNSIGNED) AS disc_part1,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(discontinuation_date, '-', 2), '-', -1) AS UNSIGNED) AS disc_part2
    FROM rwe.att_discontinuation
),
flagged AS (
    SELECT *,
        CASE WHEN enc_date_format = 'NUMERIC_DASHED'
                  AND enc_part1 <= 12
                  AND enc_part2 <= 12
             THEN 1 ELSE 0 END AS enc_date_ambiguous,
        CASE WHEN discontinuation_date_format = 'NUMERIC_DASHED'
                  AND disc_part1 <= 12
                  AND disc_part2 <= 12
             THEN 1 ELSE 0 END AS discontinuation_date_ambiguous,
        CASE WHEN enc_date_format = 'NUMERIC_DASHED'
                  AND enc_part1 > 12
                  AND enc_part2 > 12
             THEN 1 ELSE 0 END AS enc_date_invalid,
        CASE WHEN discontinuation_date_format = 'NUMERIC_DASHED'
                  AND disc_part1 > 12
                  AND disc_part2 > 12
             THEN 1 ELSE 0 END AS discontinuation_date_invalid
    FROM date_check
)

SELECT ndid, drug_name, enc_date, discontinuation_date,
       enc_date_format, discontinuation_date_format,
       enc_date_ambiguous, discontinuation_date_ambiguous,
       enc_date_invalid, discontinuation_date_invalid
FROM flagged
WHERE enc_date_format = 'UNRECOGNIZED' OR discontinuation_date_format = 'UNRECOGNIZED'
   OR enc_date_ambiguous = 1 OR discontinuation_date_ambiguous = 1
   OR enc_date_invalid = 1 OR discontinuation_date_invalid = 1
ORDER BY ndid;

===========2.3a-cont: Discontinuation date earlier than encounter date=======
WITH parsed AS (
    SELECT 
        ndid, drug_name, enc_date, discontinuation_date,
        CASE 
            WHEN enc_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' THEN STR_TO_DATE(enc_date, '%Y-%m-%d')
            WHEN enc_date REGEXP '^[0-9]{1,2} [A-Za-z]+ [0-9]{4}$' THEN STR_TO_DATE(enc_date, '%d %M %Y')
            WHEN enc_date REGEXP '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$' 
                 AND CAST(SUBSTRING_INDEX(enc_date, '-', 1) AS UNSIGNED) > 12 
                THEN STR_TO_DATE(enc_date, '%d-%m-%Y')
            WHEN enc_date REGEXP '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$' 
                 AND CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(enc_date, '-', 2), '-', -1) AS UNSIGNED) > 12 
                THEN STR_TO_DATE(enc_date, '%m-%d-%Y')
            ELSE NULL
        END AS enc_date_parsed,
        CASE 
            WHEN discontinuation_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' THEN STR_TO_DATE(discontinuation_date, '%Y-%m-%d')
            WHEN discontinuation_date REGEXP '^[0-9]{1,2} [A-Za-z]+ [0-9]{4}$' THEN STR_TO_DATE(discontinuation_date, '%d %M %Y')
            WHEN discontinuation_date REGEXP '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$' 
                 AND CAST(SUBSTRING_INDEX(discontinuation_date, '-', 1) AS UNSIGNED) > 12 
                THEN STR_TO_DATE(discontinuation_date, '%d-%m-%Y')
            WHEN discontinuation_date REGEXP '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$' 
                 AND CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(discontinuation_date, '-', 2), '-', -1) AS UNSIGNED) > 12 
                THEN STR_TO_DATE(discontinuation_date, '%m-%d-%Y')
            ELSE NULL
        END AS discontinuation_date_parsed
    FROM rwe.att_discontinuation
)
SELECT *
FROM parsed
WHERE enc_date_parsed IS NOT NULL AND discontinuation_date_parsed IS NOT NULL
  AND discontinuation_date_parsed < enc_date_parsed
ORDER BY ndid;

===========COMP-015: Active medications (med_status + medication_start_date combined)=======

===========Query 1: Overall status breakdown=======
WITH classified AS (
    SELECT 
        m.*,
        CASE 
            WHEN med_status IN ('Taking','Refill','Active') THEN 'Active_by_status'
            WHEN med_status IN ('Not Taking','Inactive','Errors') THEN 'Inactive_by_status'
            WHEN med_status = 'Ins Not Covered, Med chg' THEN 'Active_uncertain_by_status'
            WHEN (med_status IS NULL OR TRIM(med_status) = '')
                 AND medication_start_date IS NOT NULL
                 AND medication_start_date <= CURRENT_DATE()
                 AND (medication_end_date IS NULL OR medication_end_date >= CURRENT_DATE())
                THEN 'Active_by_date_fallback'
            WHEN (med_status IS NULL OR TRIM(med_status) = '')
                 AND medication_start_date IS NOT NULL
                 AND (medication_end_date IS NOT NULL AND medication_end_date < CURRENT_DATE())
                THEN 'Inactive_by_date_fallback'
            ELSE 'Unknown_insufficient_data'
        END AS active_classification
    FROM rgd_gold_ad.medication m
)

SELECT 
    active_classification,
    COUNT(*) AS n_rows,
    COUNT(DISTINCT ndid) AS n_distinct_ndids,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_rows
FROM classified
GROUP BY active_classification
ORDER BY n_rows DESC;


===========Query 2: Overall active summary=======
WITH classified AS (
    SELECT 
        m.*,
        CASE 
            WHEN med_status IN ('Taking','Refill','Active') THEN 'Active_by_status'
            WHEN med_status IN ('Not Taking','Inactive','Errors') THEN 'Inactive_by_status'
            WHEN med_status = 'Ins Not Covered, Med chg' THEN 'Active_uncertain_by_status'
            WHEN (med_status IS NULL OR TRIM(med_status) = '')
                 AND medication_start_date IS NOT NULL
                 AND medication_start_date <= CURRENT_DATE()
                 AND (medication_end_date IS NULL OR medication_end_date >= CURRENT_DATE())
                THEN 'Active_by_date_fallback'
            WHEN (med_status IS NULL OR TRIM(med_status) = '')
                 AND medication_start_date IS NOT NULL
                 AND (medication_end_date IS NOT NULL AND medication_end_date < CURRENT_DATE())
                THEN 'Inactive_by_date_fallback'
            ELSE 'Unknown_insufficient_data'
        END AS active_classification
    FROM rgd_gold_ad.medication m
)

SELECT 
    COUNT(DISTINCT CASE WHEN active_classification IN ('Active_by_status','Active_uncertain_by_status','Active_by_date_fallback') THEN ndid END) AS n_ndids_active_overall,
    COUNT(DISTINCT ndid) AS n_ndids_total,
    ROUND(COUNT(DISTINCT CASE WHEN active_classification IN ('Active_by_status','Active_uncertain_by_status','Active_by_date_fallback') THEN ndid END) * 100.0 / COUNT(DISTINCT ndid), 2) AS pct_ndids_active
FROM classified;


===============CORRECTNESS===========

===========CORR-003: med_coding_system distribution=======
WITH cohort_med AS (
    SELECT * FROM rgd_gold_ad.medication
)

SELECT 
    COALESCE(med_coding_system, 'NULL/Missing') AS med_coding_system,
    COUNT(*) AS n_rows,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM cohort_med
GROUP BY med_coding_system
ORDER BY n_rows DESC;

===========CORR-003b: NDC vs RxNorm specific check=======
WITH cohort_med AS (
    SELECT * FROM rgd_gold_ad.medication
)

SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN med_coding_system = 'NDC' THEN 1 ELSE 0 END) AS n_ndc,
    ROUND(SUM(CASE WHEN med_coding_system = 'NDC' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_ndc,
    SUM(CASE WHEN med_coding_system = 'Rx' THEN 1 ELSE 0 END) AS n_rxnorm,
    ROUND(SUM(CASE WHEN med_coding_system = 'Rx' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_rxnorm
FROM cohort_med;

===========CORR-007: Medications approved/prescribed before birth (year-level check- only year_of_birth)=======
WITH cohort_med AS (
    SELECT m.ndid, m.medicationid, m.enc_date, m.medication_start_date, m.med_name,
           p.year_of_birth
    FROM rgd_gold_ad.medication m
    INNER JOIN rgd_gold_ad.patients p ON m.ndid = p.ndid
)

SELECT ndid, medicationid, med_name, enc_date, medication_start_date, year_of_birth
FROM cohort_med
WHERE year_of_birth IS NOT NULL
  AND (
        (medication_start_date IS NOT NULL AND YEAR(medication_start_date) < year_of_birth)
     OR (enc_date IS NOT NULL AND YEAR(enc_date) < year_of_birth)
  )
ORDER BY ndid;


===========CORR-010: Consolidated summary — total ndids, death_date coverage, enc/start violations=======
WITH all_med_ndids AS (
    SELECT DISTINCT ndid
    FROM rgd_gold_ad.medication
),
death_cohort AS (
    SELECT m.ndid, m.enc_date, m.medication_start_date, p.death_date
    FROM rgd_gold_ad.medication m
    INNER JOIN rgd_gold_ad.patients p ON m.ndid = p.ndid
    WHERE p.death_date IS NOT NULL
      AND p.death_date != '0000-00-00 00:00:00'
),
ndids_with_death_date AS (
    SELECT DISTINCT ndid FROM death_cohort
),
enc_after_death AS (
    SELECT DISTINCT ndid
    FROM death_cohort
    WHERE enc_date IS NOT NULL AND enc_date > death_date
),
start_after_death AS (
    SELECT DISTINCT ndid
    FROM death_cohort
    WHERE medication_start_date IS NOT NULL AND medication_start_date > death_date
)

SELECT 
    (SELECT COUNT(*) FROM all_med_ndids) AS total_ndids_in_med_table,
    (SELECT COUNT(*) FROM ndids_with_death_date) AS ndids_with_valid_death_date,
    (SELECT COUNT(*) FROM enc_after_death) AS ndids_enc_date_after_death,
    ROUND((SELECT COUNT(*) FROM enc_after_death) * 100.0 / (SELECT COUNT(*) FROM ndids_with_death_date), 2) AS pct_enc_after_death_of_death_cohort,
    ROUND((SELECT COUNT(*) FROM enc_after_death) * 100.0 / (SELECT COUNT(*) FROM all_med_ndids), 2) AS pct_enc_after_death_of_total,
    (SELECT COUNT(*) FROM start_after_death) AS ndids_med_start_after_death,
    ROUND((SELECT COUNT(*) FROM start_after_death) * 100.0 / (SELECT COUNT(*) FROM ndids_with_death_date), 2) AS pct_start_after_death_of_death_cohort,
    ROUND((SELECT COUNT(*) FROM start_after_death) * 100.0 / (SELECT COUNT(*) FROM all_med_ndids), 2) AS pct_start_after_death_of_total;


================CREDIBILITY=============


===========PLAUS-007a: % of AD/MCI ndids on each drug class (combo isolated)=======
WITH ad_mci_cohort AS (
    SELECT DISTINCT ndid FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
med_classified AS (
    SELECT m.ndid,
        CASE 
            WHEN LOWER(m.med_name) LIKE '%memantine%donepezil%' OR LOWER(m.med_name) LIKE '%donepezil%memantine%' THEN 'ChEI+Memantine_combo'
            WHEN LOWER(m.med_name) LIKE '%donepezil%' OR LOWER(m.med_name) LIKE '%aricept%' THEN 'Donepezil'
            WHEN LOWER(m.med_name) LIKE '%rivastigmine%' OR LOWER(m.med_name) LIKE '%exelon%' THEN 'Rivastigmine'
            WHEN LOWER(m.med_name) LIKE '%galantamine%' OR LOWER(m.med_name) LIKE '%razadyne%' OR LOWER(m.med_name) LIKE '%reminyl%' THEN 'Galantamine'
            WHEN LOWER(m.med_name) LIKE '%memantine%' OR LOWER(m.med_name) LIKE '%namenda%' THEN 'Memantine'
            ELSE NULL
        END AS drug_class
    FROM rgd_gold_ad.medication m
    INNER JOIN ad_mci_cohort c ON m.ndid = c.ndid
),
totals AS (
    SELECT COUNT(*) AS total_ndids FROM ad_mci_cohort
)

SELECT drug_class, COUNT(DISTINCT ndid) AS n_ndids, t.total_ndids,
       ROUND(COUNT(DISTINCT ndid) * 100.0 / t.total_ndids, 2) AS pct_of_cohort
FROM med_classified, totals t
WHERE drug_class IS NOT NULL
GROUP BY drug_class, t.total_ndids
ORDER BY n_ndids DESC;


===========PLAUS-007b: % of AD/MCI ndids on drug combinations (combo pill isolated)=======
WITH ad_mci_cohort AS (
    SELECT DISTINCT ndid FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
med_classified AS (
    SELECT DISTINCT m.ndid,
        CASE 
            WHEN LOWER(m.med_name) LIKE '%memantine%donepezil%' OR LOWER(m.med_name) LIKE '%donepezil%memantine%' THEN 'ChEI+Memantine_combo'
            WHEN LOWER(m.med_name) LIKE '%donepezil%' OR LOWER(m.med_name) LIKE '%aricept%' THEN 'Donepezil'
            WHEN LOWER(m.med_name) LIKE '%rivastigmine%' OR LOWER(m.med_name) LIKE '%exelon%' THEN 'Rivastigmine'
            WHEN LOWER(m.med_name) LIKE '%galantamine%' OR LOWER(m.med_name) LIKE '%razadyne%' OR LOWER(m.med_name) LIKE '%reminyl%' THEN 'Galantamine'
            WHEN LOWER(m.med_name) LIKE '%memantine%' OR LOWER(m.med_name) LIKE '%namenda%' THEN 'Memantine'
            ELSE NULL
        END AS drug_class
    FROM rgd_gold_ad.medication m
    INNER JOIN ad_mci_cohort c ON m.ndid = c.ndid
),
ndid_combos AS (
    SELECT ndid, GROUP_CONCAT(DISTINCT drug_class ORDER BY drug_class SEPARATOR ' + ') AS combo
    FROM med_classified
    WHERE drug_class IS NOT NULL
    GROUP BY ndid
),
totals AS (
    SELECT COUNT(*) AS total_ndids FROM ad_mci_cohort
)

SELECT combo, COUNT(*) AS n_ndids, t.total_ndids,
       ROUND(COUNT(*) * 100.0 / t.total_ndids, 2) AS pct_of_cohort
FROM ndid_combos, totals t
GROUP BY combo, t.total_ndids
ORDER BY n_ndids DESC;

===========PLAUS-008: Count and % of AD/MCI cohort on ChEI=======
WITH ad_mci_cohort AS (
    SELECT DISTINCT ndid FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
chei_ndids AS (
    SELECT DISTINCT m.ndid
    FROM rgd_gold_ad.medication m
    INNER JOIN ad_mci_cohort c ON m.ndid = c.ndid
    WHERE (LOWER(m.med_name) LIKE '%donepezil%' OR LOWER(m.med_name) LIKE '%aricept%' 
       OR LOWER(m.med_name) LIKE '%rivastigmine%' OR LOWER(m.med_name) LIKE '%exelon%'
       OR LOWER(m.med_name) LIKE '%galantamine%' OR LOWER(m.med_name) LIKE '%razadyne%' OR LOWER(m.med_name) LIKE '%reminyl%'
       OR LOWER(m.med_name) LIKE '%memantine%donepezil%' OR LOWER(m.med_name) LIKE '%donepezil%memantine%')
)

SELECT 
    (SELECT COUNT(*) FROM ad_mci_cohort) AS total_ad_mci_ndids,
    (SELECT COUNT(*) FROM chei_ndids) AS ndids_on_chei,
    ROUND((SELECT COUNT(*) FROM chei_ndids) * 100.0 / (SELECT COUNT(*) FROM ad_mci_cohort), 2) AS pct_on_chei;
    
    



===========PLAUS-008: Timing detail — first ChEI prescription vs first AD/MCI diagnosis date:- Timing summary with %=======
WITH ad_mci_first_dx AS (
    SELECT ndid, MIN(diag_date) AS first_dx_date
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
    AND diag_date IS NOT NULL
    GROUP BY ndid
),
chei_first_rx AS (
    SELECT m.ndid, MIN(m.medication_start_date) AS first_chei_start
    FROM rgd_gold_ad.medication m
    INNER JOIN ad_mci_first_dx d ON m.ndid = d.ndid
    WHERE (LOWER(m.med_name) LIKE '%donepezil%' OR LOWER(m.med_name) LIKE '%aricept%' 
       OR LOWER(m.med_name) LIKE '%rivastigmine%' OR LOWER(m.med_name) LIKE '%exelon%'
       OR LOWER(m.med_name) LIKE '%galantamine%' OR LOWER(m.med_name) LIKE '%razadyne%' OR LOWER(m.med_name) LIKE '%reminyl%'
       OR LOWER(m.med_name) LIKE '%memantine%donepezil%' OR LOWER(m.med_name) LIKE '%donepezil%memantine%')
      AND m.medication_start_date IS NOT NULL
      AND m.medication_start_date NOT IN ('1900-02-03','0000-00-00')
    GROUP BY m.ndid
),
flagged AS (
    SELECT c.ndid,
        CASE 
            WHEN c.first_chei_start <= d.first_dx_date THEN 'BEFORE_OR_SAME_AS_DIAGNOSIS'
            ELSE 'AFTER_DIAGNOSIS'
        END AS timing_flag
    FROM chei_first_rx c
    INNER JOIN ad_mci_first_dx d ON c.ndid = d.ndid
)

SELECT timing_flag, COUNT(*) AS n_ndids,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_chei_users
FROM flagged
GROUP BY timing_flag;

===========PLAUS-014: Summary — count and % of ndids on AD meds without diagnosis=======
WITH ad_mci_cohort AS (
    SELECT DISTINCT ndid FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
),
ad_med_ndids AS (
    SELECT DISTINCT ndid
    FROM rgd_gold_ad.medication
    WHERE LOWER(med_name) LIKE '%donepezil%' OR LOWER(med_name) LIKE '%aricept%' 
       OR LOWER(med_name) LIKE '%rivastigmine%' OR LOWER(med_name) LIKE '%exelon%'
       OR LOWER(med_name) LIKE '%galantamine%' OR LOWER(med_name) LIKE '%razadyne%' OR LOWER(med_name) LIKE '%reminyl%'
       OR LOWER(med_name) LIKE '%memantine%' OR LOWER(med_name) LIKE '%namenda%'
)

SELECT 
    (SELECT COUNT(*) FROM ad_med_ndids) AS total_ndids_on_ad_meds,
    (SELECT COUNT(*) FROM ad_med_ndids a WHERE a.ndid NOT IN (SELECT ndid FROM ad_mci_cohort)) AS ndids_on_ad_meds_without_diagnosis,
    ROUND((SELECT COUNT(*) FROM ad_med_ndids a WHERE a.ndid NOT IN (SELECT ndid FROM ad_mci_cohort)) * 100.0 
          / (SELECT COUNT(*) FROM ad_med_ndids), 2) AS pct_without_diagnosis;


=========CURRENCY===========

select * from rgd_gold_ad.medication limit 10; 

WITH per_patient AS (
    SELECT ndid, COUNT(*) AS med_count
    FROM rgd_gold_ad.medication
    WHERE ndid IS NOT NULL
    GROUP BY ndid
)
SELECT 'cohort_run_id_distribution' AS check_name, CAST(cohort_run_id AS CHAR) AS attribute, CAST(COUNT(*) AS CHAR) AS value
FROM rgd_gold_ad.medication
GROUP BY cohort_run_id
UNION ALL
SELECT 'gold_created_date_distribution', CAST(DATE(gold_created_datetime) AS CHAR), CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.medication
GROUP BY DATE(gold_created_datetime)
UNION ALL
SELECT 'source_id_duplication', 'total_records', CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.medication
UNION ALL
SELECT 'source_id_duplication', 'distinct_source_ids', CAST(COUNT(DISTINCT source_udm_inc_id) AS CHAR)
FROM rgd_gold_ad.medication
UNION ALL
SELECT 'source_id_duplication', 'duplicate_source_count', CAST(COUNT(*) - COUNT(DISTINCT source_udm_inc_id) AS CHAR)
FROM rgd_gold_ad.medication
UNION ALL
SELECT 'update_status', 'total_records', CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.medication
UNION ALL
SELECT 'update_status', 'never_updated_count', CAST(SUM(CASE WHEN gold_updated_datetime IS NULL THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.medication
UNION ALL
SELECT 'update_status', 'updated_count', CAST(SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.medication
UNION ALL
SELECT 'per_patient_med_summary', 'total_patients', CAST(COUNT(*) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_med_summary', 'avg_med_per_patient', CAST(ROUND(AVG(med_count), 1) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_med_summary', 'max_med_per_patient', CAST(MAX(med_count) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_med_summary', 'patients_with_1_med', CAST(SUM(CASE WHEN med_count = 1 THEN 1 ELSE 0 END) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_med_summary', 'patients_with_over_50_med', CAST(SUM(CASE WHEN med_count > 50 THEN 1 ELSE 0 END) AS CHAR) FROM per_patient
UNION ALL
SELECT 'run_type_distribution', CASE WHEN run_id LIKE 'manual%' THEN 'Manual' ELSE 'Scheduled/Other' END, CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.medication
GROUP BY CASE WHEN run_id LIKE 'manual%' THEN 'Manual' ELSE 'Scheduled/Other' END
UNION ALL
SELECT 'future_date_check', 'future_medication_start_dates', CAST(SUM(CASE WHEN medication_start_date > CURRENT_DATE() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.medication
UNION ALL
SELECT 'future_date_check', 'future_medication_end_dates', CAST(SUM(CASE WHEN medication_end_date > CURRENT_DATE() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.medication
UNION ALL
SELECT 'future_date_check', 'future_fill_dates', CAST(SUM(CASE WHEN fill_date > CURRENT_DATE() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.medication
ORDER BY check_name;


============CONCOURDANCE=================
  
SELECT 'CONC-001' AS rule_id, 'ndid links to patients' AS rule_name,
       COUNT(*) AS denominator,
       SUM(CASE WHEN p.ndid IS NULL THEN 1 ELSE 0 END) AS numerator,
       ROUND(SUM(CASE WHEN p.ndid IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct,
       '0% orphaned' AS threshold
FROM rgd_gold_ad.medication d
LEFT JOIN rgd_gold_ad.patients p ON d.ndid = p.ndid

UNION ALL
SELECT 'CONC-002', 'encounterid links to encounters',
       COUNT(*),
       SUM(CASE WHEN e.encounterid IS NULL THEN 1 ELSE 0 END),
       ROUND(SUM(CASE WHEN e.encounterid IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2),
       '0% orphaned'
FROM rgd_gold_ad.medication d
LEFT JOIN rgd_gold_ad.encounters e ON d.encounterid = e.encounterid;
