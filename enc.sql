
===========COMPLETENESS=======
  
WITH cohort_enc AS (
    SELECT *
    FROM rgd_gold_ad.encounters
)

SELECT 'gold_row_id' AS column_name, COUNT(*) AS denominator, SUM(CASE WHEN gold_row_id IS NOT NULL THEN 1 ELSE 0 END) AS present_count, ROUND(SUM(CASE WHEN gold_row_id IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_present FROM cohort_enc
UNION ALL
SELECT 'ndid', COUNT(*), SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN ndid IS NOT NULL AND TRIM(ndid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'psid', COUNT(*), SUM(CASE WHEN psid IS NOT NULL AND TRIM(psid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN psid IS NOT NULL AND TRIM(psid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'udm_unq_id', COUNT(*), SUM(CASE WHEN udm_unq_id IS NOT NULL AND TRIM(udm_unq_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_unq_id IS NOT NULL AND TRIM(udm_unq_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'encounterid', COUNT(*), SUM(CASE WHEN encounterid IS NOT NULL AND TRIM(encounterid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN encounterid IS NOT NULL AND TRIM(encounterid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_date', COUNT(*), SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_end_date', COUNT(*), SUM(CASE WHEN enc_end_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_end_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_type', COUNT(*), SUM(CASE WHEN enc_type IS NOT NULL AND TRIM(enc_type) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_type IS NOT NULL AND TRIM(enc_type) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_subtype', COUNT(*), SUM(CASE WHEN enc_subtype IS NOT NULL AND TRIM(enc_subtype) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_subtype IS NOT NULL AND TRIM(enc_subtype) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_reason', COUNT(*), SUM(CASE WHEN enc_reason IS NOT NULL AND TRIM(enc_reason) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_reason IS NOT NULL AND TRIM(enc_reason) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_status', COUNT(*), SUM(CASE WHEN enc_status IS NOT NULL AND TRIM(enc_status) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_status IS NOT NULL AND TRIM(enc_status) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_department', COUNT(*), SUM(CASE WHEN enc_department IS NOT NULL AND TRIM(enc_department) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_department IS NOT NULL AND TRIM(enc_department) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_specialty', COUNT(*), SUM(CASE WHEN enc_specialty IS NOT NULL AND TRIM(enc_specialty) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_specialty IS NOT NULL AND TRIM(enc_specialty) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'enc_providerid', COUNT(*), SUM(CASE WHEN enc_providerid IS NOT NULL AND TRIM(enc_providerid) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_providerid IS NOT NULL AND TRIM(enc_providerid) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'udm_active_flag', COUNT(*), SUM(CASE WHEN udm_active_flag IS NOT NULL AND TRIM(udm_active_flag) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_active_flag IS NOT NULL AND TRIM(udm_active_flag) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'source_udm_inc_id', COUNT(*), SUM(CASE WHEN source_udm_inc_id IS NOT NULL AND TRIM(source_udm_inc_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN source_udm_inc_id IS NOT NULL AND TRIM(source_udm_inc_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'cohort_run_id', COUNT(*), SUM(CASE WHEN cohort_run_id IS NOT NULL AND TRIM(cohort_run_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN cohort_run_id IS NOT NULL AND TRIM(cohort_run_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'run_id', COUNT(*), SUM(CASE WHEN run_id IS NOT NULL AND TRIM(run_id) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN run_id IS NOT NULL AND TRIM(run_id) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'gold_created_datetime', COUNT(*), SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gold_created_datetime IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'gold_updated_datetime', COUNT(*), SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc
UNION ALL
SELECT 'udm_unq_id_hash', COUNT(*), SUM(CASE WHEN udm_unq_id_hash IS NOT NULL AND TRIM(udm_unq_id_hash) != '' THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN udm_unq_id_hash IS NOT NULL AND TRIM(udm_unq_id_hash) != '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) FROM cohort_enc;

===========COMP-003: enc_date / enc_end_date fill rate=======
SELECT 'enc_date' AS column_name, COUNT(*) AS denominator, SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END) AS present_count, ROUND(SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_present
FROM rgd_gold_ad.encounters
UNION ALL
SELECT 'enc_end_date', COUNT(*), SUM(CASE WHEN enc_end_date IS NOT NULL THEN 1 ELSE 0 END), ROUND(SUM(CASE WHEN enc_end_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM rgd_gold_ad.encounters;

===========COMP-003 (1): Date format / implausibility check — enc_date=======
WITH classified AS (
    SELECT 
        ndid, encounterid, enc_date,
        CASE 
            WHEN enc_date IS NULL THEN 'NULL'
            WHEN CAST(enc_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO'
            WHEN YEAR(enc_date) < 100 THEN 'IMPLAUSIBLE_LOW_YEAR (century-truncated)'
            WHEN YEAR(enc_date) >= 100 AND YEAR(enc_date) < 1900 THEN 'TOO_OLD (100-1899)'
            WHEN YEAR(enc_date) >= 4700 THEN 'FAR_FUTURE_SENTINEL (~4701-style)'
            WHEN enc_date > NOW() THEN 'FUTURE_DATE (ordinary)'
            ELSE 'PLAUSIBLE'
        END AS enc_date_category
    FROM rgd_gold_ad.encounters
)

SELECT enc_date_category, COUNT(*) AS n_rows,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM classified
GROUP BY enc_date_category
ORDER BY n_rows DESC;

===========enc_date: example rows for each category (5 examples each)=======
WITH classified AS (
    SELECT 
        ndid, encounterid, enc_date,
        CASE 
            WHEN enc_date IS NULL THEN 'NULL'
            WHEN CAST(enc_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO'
            WHEN YEAR(enc_date) < 100 THEN 'IMPLAUSIBLE_LOW_YEAR (century-truncated)'
            WHEN YEAR(enc_date) >= 100 AND YEAR(enc_date) < 1900 THEN 'TOO_OLD (100-1899)'
            WHEN YEAR(enc_date) >= 4700 THEN 'FAR_FUTURE_SENTINEL (~4701-style)'
            WHEN enc_date > NOW() THEN 'FUTURE_DATE (ordinary)'
            ELSE 'PLAUSIBLE'
        END AS enc_date_category
    FROM rgd_gold_ad.encounters
),
ranked AS (
    SELECT ndid, encounterid, enc_date, enc_date_category,
           ROW_NUMBER() OVER (PARTITION BY enc_date_category ORDER BY ndid) AS rn
    FROM classified
    WHERE enc_date_category != 'NULL'
)

SELECT enc_date_category, ndid, encounterid, enc_date
FROM ranked
WHERE rn <= 5
ORDER BY enc_date_category, ndid;

===========enc_end_date: full category breakdown=======
WITH classified AS (
    SELECT 
        ndid, encounterid, enc_end_date,
        CASE 
            WHEN enc_end_date IS NULL THEN 'NULL'
            WHEN CAST(enc_end_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO'
            WHEN YEAR(enc_end_date) < 100 THEN 'IMPLAUSIBLE_LOW_YEAR (century-truncated)'
            WHEN YEAR(enc_end_date) >= 100 AND YEAR(enc_end_date) < 1900 THEN 'TOO_OLD (100-1899)'
            WHEN YEAR(enc_end_date) >= 4700 THEN 'FAR_FUTURE_SENTINEL (~4701-style)'
            WHEN enc_end_date > NOW() THEN 'FUTURE_DATE (ordinary)'
            ELSE 'PLAUSIBLE'
        END AS enc_end_date_category
    FROM rgd_gold_ad.encounters
)

SELECT enc_end_date_category, COUNT(*) AS n_rows,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM classified
GROUP BY enc_end_date_category
ORDER BY n_rows DESC;

===========enc_end_date: example rows for each category (5 examples each)=======
WITH classified AS (
    SELECT 
        ndid, encounterid, enc_end_date,
        CASE 
            WHEN enc_end_date IS NULL THEN 'NULL'
            WHEN CAST(enc_end_date AS CHAR) IN ('0000-00-00 00:00:00','0000-00-00') THEN 'SENTINEL_ZERO'
            WHEN YEAR(enc_end_date) < 100 THEN 'IMPLAUSIBLE_LOW_YEAR'
            WHEN YEAR(enc_end_date) >= 100 AND YEAR(enc_end_date) < 1900 THEN 'TOO_OLD'
            WHEN YEAR(enc_end_date) >= 4700 THEN 'FAR_FUTURE_SENTINEL'
            WHEN enc_end_date > NOW() THEN 'FUTURE_DATE'
            ELSE 'PLAUSIBLE'
        END AS enc_end_date_category
    FROM rgd_gold_ad.encounters
),
ranked AS (
    SELECT ndid, encounterid, enc_end_date, enc_end_date_category,
           ROW_NUMBER() OVER (PARTITION BY enc_end_date_category ORDER BY ndid) AS rn
    FROM classified
    WHERE enc_end_date_category != 'NULL'
)

SELECT enc_end_date_category, ndid, encounterid, enc_end_date
FROM ranked
WHERE rn <= 5
ORDER BY enc_end_date_category, ndid;



===========COMP-013: All encounters should have enc_date populated=======
SELECT 
    COUNT(*) AS total_encounters,
    SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END) AS n_with_enc_date,
    ROUND(SUM(CASE WHEN enc_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_with_enc_date,
    SUM(CASE WHEN enc_date IS NULL THEN 1 ELSE 0 END) AS n_missing_enc_date,
    ROUND(SUM(CASE WHEN enc_date IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_missing_enc_date
FROM rgd_gold_ad.encounters;

===========COMP-020: All encounter rows should carry at least one valid date field=======
SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN enc_date IS NOT NULL OR enc_end_date IS NOT NULL THEN 1 ELSE 0 END) AS n_with_any_date,
    ROUND(SUM(CASE WHEN enc_date IS NOT NULL OR enc_end_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_with_any_date,
    SUM(CASE WHEN enc_date IS NULL AND enc_end_date IS NULL THEN 1 ELSE 0 END) AS n_with_no_date_at_all,
    ROUND(SUM(CASE WHEN enc_date IS NULL AND enc_end_date IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_with_no_date_at_all
FROM rgd_gold_ad.encounters;


===========CORR-013a: Exact full-row duplicates=======
SELECT ndid, psid, udm_unq_id, encounterid, enc_date, enc_end_date, enc_type,
       enc_subtype, enc_reason, enc_status, enc_department, enc_specialty, enc_providerid,
       COUNT(*) AS n_duplicate_rows
FROM rgd_gold_ad.encounters
GROUP BY ndid, psid, udm_unq_id, encounterid, enc_date, enc_end_date, enc_type,
         enc_subtype, enc_reason, enc_status, enc_department, enc_specialty, enc_providerid
HAVING COUNT(*) > 1
ORDER BY n_duplicate_rows DESC;

===========CORR-013b: Business-key duplicates (ndid + encounterid)=======
SELECT ndid, encounterid, COUNT(*) AS n_records
FROM rgd_gold_ad.encounters
GROUP BY ndid, encounterid
HAVING COUNT(*) > 1
ORDER BY n_records DESC;



===========CORR-014 (refined): Encounters before birth / after death, with implausible-date and known-bad-DOB isolated=======
WITH known_bad_dob_ndids AS (
    -- Patients already confirmed elsewhere (medications/diagnosis QC) to have a corrupted year_of_birth
    SELECT ndid FROM rgd_gold_ad.patients WHERE year_of_birth >= 2000
),
enc_check AS (
    SELECT 
        e.ndid, e.encounterid, e.enc_date,
        p.year_of_birth, p.death_date,
        CASE 
            WHEN YEAR(e.enc_date) > 2026 THEN 'IMPLAUSIBLE_ENC_DATE (corrupted, e.g. year 2999)'
            WHEN p.year_of_birth IS NULL OR p.year_of_birth = 0 THEN 'UNKNOWN_BIRTH_YEAR (yob missing/zero, cannot evaluate)'
            WHEN e.ndid IN (SELECT ndid FROM known_bad_dob_ndids) 
                 AND YEAR(e.enc_date) < p.year_of_birth THEN 'BEFORE_BIRTH_KNOWN_SOURCE_DOB_ISSUE'
            WHEN YEAR(e.enc_date) < p.year_of_birth THEN 'BEFORE_BIRTH_NEW_CASE'
            WHEN p.death_date IS NOT NULL 
                 AND CAST(p.death_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
                 AND YEAR(p.death_date) >= 100
                 AND e.enc_date > p.death_date THEN 'AFTER_DEATH'
            ELSE 'VALID'
        END AS flag
    FROM rgd_gold_ad.encounters e
    INNER JOIN rgd_gold_ad.patients p ON e.ndid = p.ndid
    WHERE e.enc_date IS NOT NULL
      AND CAST(e.enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
      AND YEAR(e.enc_date) >= 1900
)

SELECT flag, COUNT(*) AS n_rows, COUNT(DISTINCT ndid) AS n_distinct_ndids,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM enc_check
GROUP BY flag
ORDER BY n_rows DESC;

===========1. UNKNOWN_BIRTH_YEAR — ndid, psid, enc_date, year_of_birth=======
===========1. Distinct ndids — UNKNOWN_BIRTH_YEAR=======
SELECT DISTINCT e.ndid, e.psid, p.year_of_birth
FROM rgd_gold_ad.encounters e
INNER JOIN rgd_gold_ad.patients p ON e.ndid = p.ndid
WHERE e.enc_date IS NOT NULL
  AND CAST(e.enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
  AND YEAR(e.enc_date) >= 1900 AND YEAR(e.enc_date) <= 2100
  AND (p.year_of_birth IS NULL OR p.year_of_birth = 0)
ORDER BY e.ndid;

===========2. Distinct ndids — FUTURE / IMPLAUSIBLE enc_date=======
===========2. Distinct ndids — FUTURE / IMPLAUSIBLE enc_date (current month excluded)=======
SELECT DISTINCT e.ndid, e.psid, p.year_of_birth
FROM rgd_gold_ad.encounters e
INNER JOIN rgd_gold_ad.patients p ON e.ndid = p.ndid
WHERE e.enc_date IS NOT NULL
  AND (
        YEAR(e.enc_date) > 2100 
        OR e.enc_date >= DATE_ADD(LAST_DAY(CURRENT_DATE()), INTERVAL 1 DAY)
      )
GROUP BY e.ndid, e.psid, p.year_of_birth
ORDER BY e.ndid;




===========3. Distinct ndids — AFTER_DEATH=======
SELECT DISTINCT e.ndid, e.psid, p.year_of_birth, p.death_date, e.enc_date
FROM rgd_gold_ad.encounters e
INNER JOIN rgd_gold_ad.patients p ON e.ndid = p.ndid
WHERE e.enc_date IS NOT NULL
  AND CAST(e.enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
  AND YEAR(e.enc_date) >= 1900 AND YEAR(e.enc_date) <= 2100
  AND p.death_date IS NOT NULL
  AND CAST(p.death_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
  AND YEAR(p.death_date) >= 100
  AND e.enc_date > p.death_date
ORDER BY e.ndid, e.enc_date;

===========4. Distinct ndids — BEFORE_BIRTH_KNOWN_SOURCE_DOB_ISSUE=======
SELECT DISTINCT e.ndid, e.psid, p.year_of_birth
FROM rgd_gold_ad.encounters e
INNER JOIN rgd_gold_ad.patients p ON e.ndid = p.ndid
WHERE e.enc_date IS NOT NULL
  AND CAST(e.enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
  AND YEAR(e.enc_date) >= 1900 AND YEAR(e.enc_date) <= 2100
  AND p.year_of_birth >= 2000
  AND YEAR(e.enc_date) < p.year_of_birth
ORDER BY e.ndid;

===========5. Distinct ndids — BEFORE_BIRTH_NEW_CASE=======
SELECT DISTINCT e.ndid, e.psid, p.year_of_birth, e.enc_Date
FROM rgd_gold_ad.encounters e
INNER JOIN rgd_gold_ad.patients p ON e.ndid = p.ndid
WHERE e.enc_date IS NOT NULL
  AND CAST(e.enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
  AND YEAR(e.enc_date) >= 1900 AND YEAR(e.enc_date) <= 2100
  AND p.year_of_birth IS NOT NULL AND p.year_of_birth != 0 AND p.year_of_birth < 2000
  AND YEAR(e.enc_date) < p.year_of_birth
ORDER BY e.ndid, e.enc_date;




PLAUS-010 — Visit duration (length of stay) credibility for inpatient encounters
===========PLAUS-010: Length of stay credibility for inpatient encounters=======
WITH inpatient_los AS (
    SELECT 
        ndid, encounterid, enc_type, enc_date, enc_end_date,
        DATEDIFF(enc_end_date, enc_date) AS los_days
    FROM rgd_gold_ad.encounters
    WHERE enc_type = 'Hospital Visit'
      AND enc_date IS NOT NULL AND enc_end_date IS NOT NULL
      AND CAST(enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
      AND CAST(enc_end_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
      AND YEAR(enc_date) >= 1900 AND YEAR(enc_end_date) < 4700
      AND enc_end_date >= enc_date
)

SELECT 
    COUNT(*) AS total_inpatient_encounters,
    SUM(CASE WHEN los_days > 90 THEN 1 ELSE 0 END) AS n_extreme_los,
    ROUND(SUM(CASE WHEN los_days > 90 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_extreme_los,
    '<1%' AS threshold
FROM inpatient_los;


===========PLAUS-010 detail: Extreme LOS encounters (>90 days)=======
SELECT ndid, encounterid, enc_date, enc_end_date, DATEDIFF(enc_end_date, enc_date) AS los_days
FROM rgd_gold_ad.encounters
WHERE enc_type = 'Hospital Visit'
  AND enc_date IS NOT NULL AND enc_end_date IS NOT NULL
  AND CAST(enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
  AND CAST(enc_end_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
  AND YEAR(enc_date) >= 1900 AND YEAR(enc_end_date) < 4700
  AND enc_end_date >= enc_date
  AND DATEDIFF(enc_end_date, enc_date) > 90
ORDER BY los_days DESC;


PLAUS-011 — Event frequency credibility (unrealistic visit frequency)

===========PLAUS-011: Encounters per patient per month — outlier check=======
WITH monthly_counts AS (
    SELECT ndid, DATE_FORMAT(enc_date, '%Y-%m') AS enc_month, COUNT(*) AS n_encounters
    FROM rgd_gold_ad.encounters
    WHERE enc_date IS NOT NULL
      AND CAST(enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
      AND YEAR(enc_date) >= 1900 AND YEAR(enc_date) < 4700
    GROUP BY ndid, DATE_FORMAT(enc_date, '%Y-%m')
),
stats AS (
    SELECT AVG(n_encounters) AS mean_val, STDDEV(n_encounters) AS stddev_val
    FROM monthly_counts
)

SELECT 
    COUNT(*) AS total_patient_months,
    SUM(CASE WHEN mc.n_encounters > 30 THEN 1 ELSE 0 END) AS n_over_30_per_month,
    ROUND(SUM(CASE WHEN mc.n_encounters > 30 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_over_30_per_month,
    SUM(CASE WHEN mc.n_encounters > s.mean_val + 3 * s.stddev_val THEN 1 ELSE 0 END) AS n_over_3sd,
    ROUND(SUM(CASE WHEN mc.n_encounters > s.mean_val + 3 * s.stddev_val THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_over_3sd,
    '<1%' AS threshold
FROM monthly_counts mc, stats s;

===========PLAUS-011 detail: Patient-months with unrealistic encounter frequency=======
WITH monthly_counts AS (
    SELECT ndid, DATE_FORMAT(enc_date, '%Y-%m') AS enc_month, COUNT(*) AS n_encounters
    FROM rgd_gold_ad.encounters
    WHERE enc_date IS NOT NULL
      AND CAST(enc_date AS CHAR) NOT IN ('0000-00-00 00:00:00','0000-00-00')
      AND YEAR(enc_date) >= 1900 AND YEAR(enc_date) < 4700
    GROUP BY ndid, DATE_FORMAT(enc_date, '%Y-%m')
),
stats AS (
    SELECT AVG(n_encounters) AS mean_val, STDDEV(n_encounters) AS stddev_val
    FROM monthly_counts
)

SELECT mc.ndid, mc.enc_month, mc.n_encounters
FROM monthly_counts mc, stats s
WHERE mc.n_encounters > 30 OR mc.n_encounters > s.mean_val + 3 * s.stddev_val
ORDER BY mc.n_encounters DESC
LIMIT 100;

===========CURRENCY: rgd_gold_ad.encounters=======
WITH per_patient AS (
    SELECT ndid, COUNT(*) AS enc_count
    FROM rgd_gold_ad.encounters
    WHERE ndid IS NOT NULL
    GROUP BY ndid
)
SELECT 'cohort_run_id_distribution' AS check_name, CAST(cohort_run_id AS CHAR) AS attribute, CAST(COUNT(*) AS CHAR) AS value
FROM rgd_gold_ad.encounters
GROUP BY cohort_run_id
UNION ALL
SELECT 'gold_created_date_distribution', CAST(DATE(gold_created_datetime) AS CHAR), CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.encounters
GROUP BY DATE(gold_created_datetime)
UNION ALL
SELECT 'source_id_duplication', 'total_records', CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.encounters
UNION ALL
SELECT 'source_id_duplication', 'distinct_source_ids', CAST(COUNT(DISTINCT source_udm_inc_id) AS CHAR)
FROM rgd_gold_ad.encounters
UNION ALL
SELECT 'source_id_duplication', 'duplicate_source_count', CAST(COUNT(*) - COUNT(DISTINCT source_udm_inc_id) AS CHAR)
FROM rgd_gold_ad.encounters
UNION ALL
SELECT 'update_status', 'total_records', CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.encounters
UNION ALL
SELECT 'update_status', 'never_updated_count', CAST(SUM(CASE WHEN gold_updated_datetime IS NULL THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.encounters
UNION ALL
SELECT 'update_status', 'updated_count', CAST(SUM(CASE WHEN gold_updated_datetime IS NOT NULL THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.encounters
UNION ALL
SELECT 'per_patient_enc_summary', 'total_patients', CAST(COUNT(*) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_enc_summary', 'avg_enc_per_patient', CAST(ROUND(AVG(enc_count), 1) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_enc_summary', 'max_enc_per_patient', CAST(MAX(enc_count) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_enc_summary', 'patients_with_1_enc', CAST(SUM(CASE WHEN enc_count = 1 THEN 1 ELSE 0 END) AS CHAR) FROM per_patient
UNION ALL
SELECT 'per_patient_enc_summary', 'patients_with_over_50_enc', CAST(SUM(CASE WHEN enc_count > 50 THEN 1 ELSE 0 END) AS CHAR) FROM per_patient
UNION ALL
SELECT 'run_type_distribution', CASE WHEN run_id LIKE 'manual%' THEN 'Manual' ELSE 'Scheduled/Other' END, CAST(COUNT(*) AS CHAR)
FROM rgd_gold_ad.encounters
GROUP BY CASE WHEN run_id LIKE 'manual%' THEN 'Manual' ELSE 'Scheduled/Other' END
UNION ALL
SELECT 'future_date_check', 'future_enc_dates', CAST(SUM(CASE WHEN enc_date > CURRENT_DATE() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.encounters
UNION ALL
SELECT 'future_date_check', 'future_enc_end_dates', CAST(SUM(CASE WHEN enc_end_date > CURRENT_DATE() THEN 1 ELSE 0 END) AS CHAR)
FROM rgd_gold_ad.encounters
ORDER BY check_name;

