===========COMPLETENESS: rgd_gold_ad.patients=======
WITH cohort_patients AS (
    SELECT *
    FROM rgd_gold_ad.patients
)

SELECT 'gold_row_id' AS column_name, COUNT(*) AS denominator, SUM(CASE WHEN gold_row_id IS NOT NULL THEN 1 ELSE 0 END) AS present_count, ROUND(SUM(CASE WHEN gold_row_id IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_present FROM cohort_patients
UNION ALL
SELECT 'ndid', COUNT(*), SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'psid', COUNT(*), SUM(CASE WHEN psid IS NOT NULL AND TRIM(psid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN psid IS NOT NULL AND TRIM(psid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'udm_unq_id', COUNT(*), SUM(CASE WHEN udm_unq_id IS NOT NULL AND TRIM(udm_unq_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_unq_id IS NOT NULL AND TRIM(udm_unq_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'registration_date', COUNT(*), SUM(CASE WHEN registration_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN registration_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'year_of_birth', COUNT(*), SUM(CASE WHEN year_of_birth IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN year_of_birth IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'gender', COUNT(*), SUM(CASE WHEN gender IS NOT NULL AND TRIM(gender) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gender IS NOT NULL AND TRIM(gender) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'race', COUNT(*), SUM(CASE WHEN race IS NOT NULL AND TRIM(race) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN race IS NOT NULL AND TRIM(race) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'ethnicity', COUNT(*), SUM(CASE WHEN ethnicity IS NOT NULL AND TRIM(ethnicity) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN ethnicity IS NOT NULL AND TRIM(ethnicity) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'marital_status', COUNT(*), SUM(CASE WHEN marital_status IS NOT NULL AND TRIM(marital_status) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN marital_status IS NOT NULL AND TRIM(marital_status) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'patient_state', COUNT(*), SUM(CASE WHEN patient_state IS NOT NULL AND TRIM(patient_state) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN patient_state IS NOT NULL AND TRIM(patient_state) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'patient_region', COUNT(*), SUM(CASE WHEN patient_region IS NOT NULL AND TRIM(patient_region) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN patient_region IS NOT NULL AND TRIM(patient_region) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'insurance', COUNT(*), SUM(CASE WHEN insurance IS NOT NULL AND TRIM(insurance) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN insurance IS NOT NULL AND TRIM(insurance) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'deceased_status', COUNT(*), SUM(CASE WHEN deceased_status IS NOT NULL AND TRIM(deceased_status) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN deceased_status IS NOT NULL AND TRIM(deceased_status) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'death_date', COUNT(*), SUM(CASE WHEN death_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN death_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'death_reason', COUNT(*), SUM(CASE WHEN death_reason IS NOT NULL AND TRIM(death_reason) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN death_reason IS NOT NULL AND TRIM(death_reason) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'udm_active_flag', COUNT(*), SUM(CASE WHEN udm_active_flag IS NOT NULL AND TRIM(udm_active_flag) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_active_flag IS NOT NULL AND TRIM(udm_active_flag) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'source_udm_inc_id', COUNT(*), SUM(CASE WHEN source_udm_inc_id IS NOT NULL AND TRIM(source_udm_inc_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN source_udm_inc_id IS NOT NULL AND TRIM(source_udm_inc_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'cohort_run_id', COUNT(*), SUM(CASE WHEN cohort_run_id IS NOT NULL AND TRIM(cohort_run_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN cohort_run_id IS NOT NULL AND TRIM(cohort_run_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'run_id', COUNT(*), SUM(CASE WHEN run_id IS NOT NULL AND TRIM(run_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN run_id IS NOT NULL AND TRIM(run_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'gold_created_datetime', COUNT(*), SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients
UNION ALL
SELECT 'gold_updated_datetime', COUNT(*), SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_patients;


COMP-001 — Patient ID (ndid) completeness
===========COMP-001: Patient ID (ndid) completeness=======
SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END) AS ndid_present,
    ROUND(SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_ndid_present,
    COUNT(DISTINCT ndid) AS distinct_ndids
FROM rgd_gold_ad.patients;


===========COMP-002: % of patients with at least one linked encounter=======
WITH all_patients AS (
    SELECT DISTINCT ndid FROM rgd_gold_ad.patients
),
patients_with_encounter AS (
    SELECT DISTINCT ndid FROM rgd_gold_ad.encounters
    WHERE encounterid IS NOT NULL AND TRIM(encounterid) != ''
)

SELECT 
    (SELECT COUNT(*) FROM all_patients) AS total_patients,
    (SELECT COUNT(*) FROM patients_with_encounter p WHERE p.ndid IN (SELECT ndid FROM all_patients)) AS patients_with_encounter,
    ROUND((SELECT COUNT(*) FROM patients_with_encounter p WHERE p.ndid IN (SELECT ndid FROM all_patients)) * 100.0 
          / (SELECT COUNT(*) FROM all_patients), 2) AS pct_with_encounter;
          


===========COMP-003: Fill rate for registration_date, year_of_birth, death_date=======
SELECT 'registration_date' AS column_name, COUNT(*) AS denominator, 
       SUM(CASE WHEN registration_date IS NOT NULL THEN 1 ELSE 0 END) AS present_count,
       ROUND(SUM(CASE WHEN registration_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_present
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'year_of_birth', COUNT(*), 
       SUM(CASE WHEN year_of_birth IS NOT NULL THEN 1 ELSE 0 END),
       ROUND(SUM(CASE WHEN year_of_birth IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'death_date', COUNT(*), 
       SUM(CASE WHEN death_date IS NOT NULL THEN 1 ELSE 0 END),
       ROUND(SUM(CASE WHEN death_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM rgd_gold_ad.patients;



===========COMP-003 (2.1, corrected): Date format check — registration_date and death_date=======
WITH format_check AS (
    SELECT 
        ndid,
        registration_date, death_date,
        CASE 
            WHEN registration_date IS NULL THEN 'NULL'
            WHEN CAST(registration_date AS CHAR) REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$' THEN 'ISO_yyyy-mm-dd hh:mm:ss'
            WHEN CAST(registration_date AS CHAR) REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' THEN 'ISO_yyyy-mm-dd (date only)'
            WHEN CAST(registration_date AS CHAR) = '0000-00-00 00:00:00' OR CAST(registration_date AS CHAR) = '0000-00-00' THEN 'SENTINEL_ZERO'
            ELSE 'UNRECOGNIZED_OR_NON_STANDARD'
        END AS registration_date_format,
        CASE 
            WHEN death_date IS NULL THEN 'NULL'
            WHEN CAST(death_date AS CHAR) REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$' THEN 'ISO_yyyy-mm-dd hh:mm:ss'
            WHEN CAST(death_date AS CHAR) REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' THEN 'ISO_yyyy-mm-dd (date only)'
            WHEN CAST(death_date AS CHAR) = '0000-00-00 00:00:00' OR CAST(death_date AS CHAR) = '0000-00-00' THEN 'SENTINEL_ZERO'
            ELSE 'UNRECOGNIZED_OR_NON_STANDARD'
        END AS death_date_format
    FROM rgd_gold_ad.patients
)

SELECT registration_date_format, COUNT(*) AS n_rows,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM format_check
GROUP BY registration_date_format
ORDER BY n_rows DESC;

===========COMP-003 (2.2, corrected): Implausible date flags — registration_date=======
WITH flagged AS (
    SELECT ndid, registration_date, year_of_birth,
        CASE 
            WHEN registration_date IS NULL THEN 'NULL'
            WHEN CAST(registration_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO_DATE'
            WHEN registration_date > NOW() THEN 'FUTURE_DATE'
            WHEN YEAR(registration_date) < 1900 THEN 'TOO_OLD (pre-1900)'
            WHEN year_of_birth IS NOT NULL AND YEAR(registration_date) < year_of_birth THEN 'REGISTERED_BEFORE_BIRTH'
            ELSE 'PLAUSIBLE'
        END AS registration_date_flag
    FROM rgd_gold_ad.patients
)

SELECT registration_date_flag, COUNT(*) AS n_ndids,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM flagged
GROUP BY registration_date_flag
ORDER BY n_ndids DESC;

===========COMP-003 (2.1, corrected cont): death_date format breakdown=======
WITH format_check AS (
    SELECT 
        ndid, death_date,
        CASE 
            WHEN death_date IS NULL THEN 'NULL'
            WHEN CAST(death_date AS CHAR) REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$' THEN 'ISO_yyyy-mm-dd hh:mm:ss'
            WHEN CAST(death_date AS CHAR) REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' THEN 'ISO_yyyy-mm-dd (date only)'
            WHEN CAST(death_date AS CHAR) = '0000-00-00 00:00:00' OR CAST(death_date AS CHAR) = '0000-00-00' THEN 'SENTINEL_ZERO'
            ELSE 'UNRECOGNIZED_OR_NON_STANDARD'
        END AS death_date_format
    FROM rgd_gold_ad.patients
)

SELECT death_date_format, COUNT(*) AS n_rows,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM format_check
GROUP BY death_date_format
ORDER BY n_rows DESC;

WITH flagged AS (
    SELECT ndid, registration_date, year_of_birth,
        CASE 
            WHEN registration_date IS NULL THEN 'NULL'
            WHEN CAST(registration_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO_DATE'
            WHEN registration_date > NOW() THEN 'FUTURE_DATE'
            WHEN YEAR(registration_date) < 1900 THEN 'TOO_OLD (pre-1900)'
            WHEN year_of_birth IS NOT NULL AND YEAR(registration_date) < year_of_birth THEN 'REGISTERED_BEFORE_BIRTH'
            ELSE 'PLAUSIBLE'
        END AS registration_date_flag
    FROM rgd_gold_ad.patients
)
SELECT p.*
FROM rgd_gold_ad.patients p
JOIN flagged f ON p.ndid = f.ndid
WHERE f.registration_date_flag = 'REGISTERED_BEFORE_BIRTH';

===========COMP-003 (2.2, corrected): Implausible date flags — death_date=======
WITH flagged AS (
    SELECT ndid, death_date, year_of_birth,
        CASE 
            WHEN death_date IS NULL THEN 'NULL'
            WHEN CAST(death_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO_DATE'
            WHEN death_date > NOW() THEN 'FUTURE_DATE'
            WHEN YEAR(death_date) < 1900 THEN 'TOO_OLD (pre-1900)'
            WHEN year_of_birth IS NOT NULL AND YEAR(death_date) < year_of_birth THEN 'DEATH_BEFORE_BIRTH'
            ELSE 'PLAUSIBLE'
        END AS death_date_flag
    FROM rgd_gold_ad.patients
)

SELECT death_date_flag, COUNT(*) AS n_ndids,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM flagged
GROUP BY death_date_flag
ORDER BY n_ndids DESC;


===========COMP-010: death_date x deceased_status distribution=======
SELECT 
    COALESCE(deceased_status, 'NULL') AS deceased_status,
    COUNT(*) AS n_ndids,
    SUM(CASE WHEN death_date IS NOT NULL AND CAST(death_date AS CHAR) != '0000-00-00' THEN 1 ELSE 0 END) AS n_with_valid_death_date,
    SUM(CASE WHEN death_date IS NULL THEN 1 ELSE 0 END) AS n_without_death_date,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM rgd_gold_ad.patients
GROUP BY deceased_status
ORDER BY n_ndids DESC;


===========COMP-010b: Inconsistency check — deceased_status vs death_date presence=======
SELECT 
    CASE 
        WHEN deceased_status = 'Y' AND (death_date IS NULL OR CAST(death_date AS CHAR) = '0000-00-00') THEN 'Y_status_but_no_valid_death_date'
        WHEN deceased_status = 'N' AND death_date IS NOT NULL AND CAST(death_date AS CHAR) != '0000-00-00' THEN 'N_status_but_has_death_date'
        WHEN deceased_status IS NULL AND death_date IS NOT NULL AND CAST(death_date AS CHAR) != '0000-00-00' THEN 'NULL_status_but_has_death_date'
        ELSE 'CONSISTENT'
    END AS consistency_flag,
    COUNT(*) AS n_ndids,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM rgd_gold_ad.patients
GROUP BY 
    CASE 
        WHEN deceased_status = 'Y' AND (death_date IS NULL OR CAST(death_date AS CHAR) = '0000-00-00') THEN 'Y_status_but_no_valid_death_date'
        WHEN deceased_status = 'N' AND death_date IS NOT NULL AND CAST(death_date AS CHAR) != '0000-00-00' THEN 'N_status_but_has_death_date'
        WHEN deceased_status IS NULL AND death_date IS NOT NULL AND CAST(death_date AS CHAR) != '0000-00-00' THEN 'NULL_status_but_has_death_date'
        ELSE 'CONSISTENT'
    END
ORDER BY n_ndids DESC;


===========COMP-011: Gender distribution, Gender completeness and distribution:- all patients=======
SELECT 
    COALESCE(gender, 'NULL/Missing') AS gender,
    COUNT(*) AS n_ndids,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM rgd_gold_ad.patients
GROUP BY gender
ORDER BY n_ndids DESC;


===========COMP-011.1: Gender distribution, AD/MCI cohort=======
WITH ad_mci_cohort AS (
    SELECT DISTINCT ndid
    FROM rgd_gold_ad.diagnosis
    WHERE diag_code IN (
        'G30.0','G30.1','G30.8','G30.9','G31.84',
        'g30.0','g30.1','g30.8','g30.9','g300','g301','g308','g309','g31.84','g3184',
        '331.0','331.83','294.1','294.10','294.11',
        '0331.0','0331.83','0294.1','0294.10','0294.11',
        '03310','033183','02941','029410','029411'
    )
)

SELECT 
    COALESCE(p.gender, 'NULL/Missing') AS gender,
    COUNT(*) AS n_ndids,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_ad_mci_cohort
FROM rgd_gold_ad.patients p
INNER JOIN ad_mci_cohort c ON p.ndid = c.ndid
GROUP BY p.gender
ORDER BY n_ndids DESC;



===========COMP-012: Distribution of invalid year_of_birth values (with reason)=======
WITH classified AS (
    SELECT ndid, year_of_birth,
        CASE 
            WHEN year_of_birth IS NULL THEN 'MISSING'
            WHEN year_of_birth = 0 THEN 'INVALID_ZERO'
            WHEN year_of_birth < 1900 THEN 'INVALID_TOO_OLD (before 1900)'
            WHEN year_of_birth > YEAR(CURRENT_DATE()) THEN 'INVALID_FUTURE_YEAR'
            ELSE 'VALID'
        END AS validity_flag
    FROM rgd_gold_ad.patients
)

SELECT 
    validity_flag,
    year_of_birth,
    COUNT(*) AS n_ndids
FROM classified
WHERE validity_flag != 'VALID'
GROUP BY validity_flag, year_of_birth
ORDER BY validity_flag, year_of_birth;


===========COMP-012 (5.1): Summary — present vs missing vs valid=======
WITH classified AS (
    SELECT ndid, year_of_birth,
        CASE 
            WHEN year_of_birth IS NULL THEN 'MISSING'
            WHEN year_of_birth = 0 THEN 'INVALID_ZERO'
            WHEN year_of_birth < 1900 OR year_of_birth > YEAR(CURRENT_DATE()) THEN 'INVALID_OUT_OF_RANGE'
            ELSE 'VALID'
        END AS validity_flag
    FROM rgd_gold_ad.patients
)

SELECT 
    COUNT(*) AS total_ndids,
    SUM(CASE WHEN validity_flag = 'MISSING' THEN 1 ELSE 0 END) AS n_missing,
    ROUND(SUM(CASE WHEN validity_flag = 'MISSING' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_missing,
    SUM(CASE WHEN validity_flag != 'MISSING' THEN 1 ELSE 0 END) AS n_present,
    ROUND(SUM(CASE WHEN validity_flag != 'MISSING' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_present,
    SUM(CASE WHEN validity_flag = 'VALID' THEN 1 ELSE 0 END) AS n_valid,
    ROUND(SUM(CASE WHEN validity_flag = 'VALID' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_valid
FROM classified;



===========PLAUS-012 summary — only PLAUSIBLE dates count toward the adult-only check=======
WITH classified AS (
    SELECT 
        ndid, year_of_birth, death_date,
        CASE 
            WHEN death_date IS NULL THEN 'NULL'
            WHEN CAST(death_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO'
            WHEN YEAR(death_date) < 100 THEN 'IMPLAUSIBLE_LOW_YEAR (century-truncated)'
            WHEN YEAR(death_date) >= 100 AND YEAR(death_date) < 1900 THEN 'TOO_OLD (100-1899)'
            WHEN death_date > NOW() THEN 'FUTURE_DATE'
            ELSE 'PLAUSIBLE'
        END AS death_date_category
    FROM rgd_gold_ad.patients
    WHERE year_of_birth IS NOT NULL AND year_of_birth != 0
),
age_check AS (
    SELECT ndid, YEAR(death_date) - year_of_birth AS approx_age_at_death
    FROM classified
    WHERE death_date_category = 'PLAUSIBLE'
)

SELECT 
    COUNT(*) AS total_deceased_with_plausible_dates,
    SUM(CASE WHEN approx_age_at_death < 18 THEN 1 ELSE 0 END) AS n_under_18_at_death,
    ROUND(SUM(CASE WHEN approx_age_at_death < 18 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_under_18_at_death,
    SUM(CASE WHEN approx_age_at_death >= 18 THEN 1 ELSE 0 END) AS n_valid_adult,
    ROUND(SUM(CASE WHEN approx_age_at_death >= 18 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_valid_adult
FROM age_check;

===========PLAUS-012 (corrected) — date-quality categories excluded from the age check, for transparency=======
WITH classified AS (
    SELECT 
        ndid, year_of_birth, death_date,
        CASE 
            WHEN death_date IS NULL THEN 'NULL'
            WHEN CAST(death_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO'
            WHEN YEAR(death_date) < 100 THEN 'IMPLAUSIBLE_LOW_YEAR (century-truncated)'
            WHEN YEAR(death_date) >= 100 AND YEAR(death_date) < 1900 THEN 'TOO_OLD (100-1899)'
            WHEN death_date > NOW() THEN 'FUTURE_DATE'
            ELSE 'PLAUSIBLE'
        END AS death_date_category
    FROM rgd_gold_ad.patients
    WHERE year_of_birth IS NOT NULL AND year_of_birth != 0
)

SELECT death_date_category, COUNT(*) AS n_ndids,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM classified
WHERE death_date_category != 'NULL'
GROUP BY death_date_category
ORDER BY n_ndids DESC;


===========Example ndids for each death_date_category (5 examples each)=======
WITH classified AS (
    SELECT 
        ndid, year_of_birth, death_date,
        CASE 
            WHEN death_date IS NULL THEN 'NULL'
            WHEN CAST(death_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO'
            WHEN YEAR(death_date) < 100 THEN 'IMPLAUSIBLE_LOW_YEAR (century-truncated)'
            WHEN YEAR(death_date) >= 100 AND YEAR(death_date) < 1900 THEN 'TOO_OLD (100-1899)'
            WHEN death_date > NOW() THEN 'FUTURE_DATE'
            ELSE 'PLAUSIBLE'
        END AS death_date_category
    FROM rgd_gold_ad.patients
    WHERE year_of_birth IS NOT NULL AND year_of_birth != 0
),
ranked AS (
    SELECT ndid, year_of_birth, death_date, death_date_category,
           ROW_NUMBER() OVER (PARTITION BY death_date_category ORDER BY ndid) AS rn
    FROM classified
    WHERE death_date_category != 'NULL'
)

SELECT death_date_category, ndid, year_of_birth, death_date
FROM ranked
WHERE rn <= 5
ORDER BY death_date_category, ndid;


===========CURRENCY: rgd_gold_ad.patients=======
WITH per_ndid AS (
    SELECT ndid, COUNT(*) AS row_count
    FROM rgd_gold_ad.patients
    WHERE ndid IS NOT NULL
    GROUP BY ndid
)
SELECT 'cohort_run_id_distribution' AS check_name, CAST(cohort_run_id AS CHAR) AS attribute, CAST(COUNT(*) AS CHAR) AS value
FROM rgd_gold_ad.patients
GROUP BY cohort_run_id
UNION ALL
SELECT 'gold_created_date_distribution', CAST(DATE(gold_created_datetime) AS CHAR), CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.patients
GROUP BY DATE(gold_created_datetime)
UNION ALL
SELECT 'source_id_duplication', 'total_records', CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'source_id_duplication', 'distinct_source_ids', CAST(COUNT(DISTINCT source_udm_inc_id) AS CHAR)
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'source_id_duplication', 'duplicate_source_count', CAST(COUNT(*) - COUNT(DISTINCT source_udm_inc_id) AS CHAR)
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'update_status', 'total_records', CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'update_status', 'never_updated_count', CAST(SUM(CASE WHEN gold_updated_datetime IS NULL THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'update_status', 'updated_count', CAST(SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'per_ndid_row_summary', 'total_distinct_ndids', CAST(COUNT(*) AS CHAR) FROM per_ndid
UNION ALL
SELECT 'per_ndid_row_summary', 'ndids_with_exactly_1_row', CAST(SUM(CASE WHEN row_count = 1 THEN 1 ELSE 0 END) AS CHAR) FROM per_ndid
UNION ALL
SELECT 'per_ndid_row_summary', 'ndids_with_multiple_rows', CAST(SUM(CASE WHEN row_count > 1 THEN 1 ELSE 0 END) AS CHAR) FROM per_ndid
UNION ALL
SELECT 'per_ndid_row_summary', 'max_rows_for_single_ndid', CAST(MAX(row_count) AS CHAR) FROM per_ndid
UNION ALL
SELECT 'run_type_distribution', CASE WHEN run_id LIKE 'manual%' THEN 'Manual' ELSE 'Scheduled/Other' END, CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.patients
GROUP BY CASE WHEN run_id LIKE 'manual%' THEN 'Manual' ELSE 'Scheduled/Other' END
UNION ALL
SELECT 'future_date_check', 'future_registration_dates', CAST(SUM(CASE WHEN registration_date > NOW() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.patients
UNION ALL
SELECT 'future_date_check', 'future_death_dates', CAST(SUM(CASE WHEN death_date > NOW() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.patients
ORDER BY check_name;
