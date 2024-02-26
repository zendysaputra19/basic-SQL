-- 1. select table
SELECT
    *
FROM
    ds.studentsperformance;

-- 2. Grup race/ethnicity pada dataset
SELECT
    DISTINCT race_or_ethnicity
FROM
    ds.studentsperformance
ORDER BY
    race_or_ethnicity;

-- 3. grup yang memiliki nilai math sama dengan 0
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    math_score = 0;

-- OR
SELECT
    *
FROM
    ds.studentsperformance
ORDER BY
    math_score ASC;

-- 4. nilai writing terkecil orang yang memiliki orangtua dengan tingkat pendidikan associate's degree
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    parental_level_of_education = "associate's degree"
ORDER BY
    writing_score ASC;

-- 5. nilai writing terendah orang di grup A dan nilai writing terendah orang di grup B
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    race_or_ethnicity IN ('group A', 'group B')
ORDER BY
    writing_score ASC;

-- 6. orang yang memiliki nilai math kurang dari 65 namun memiliki nilai writing lebih besar dari 80
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    writing_score > 80
    AND math_score < 65
ORDER BY
    writing_score ASC;

-- 7. Jika data di-filter dengan nilai reading lebih dari 10 namun kurang dari 25, tingkat pendidikan orangtua apa saja yang termasuk ke dalam data tersebut
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    reading_score > 10
    AND reading_score < 25
ORDER BY
    reading_score ASC;

-- atau menggunakan between
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    reading_score BETWEEN 11
    AND 24
ORDER BY
    reading_score ASC;

-- 8. tingkat pendidikan orang tua mengandung kata "high" dan nilai writing kurang dari 35.
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    parental_level_of_education LIKE '%high%'
    AND race_or_ethnicity NOT IN ('group A', 'group B')
    AND reading_score < 35;

-- 9. tingkat pendidikan orang tua berawalan kata "high" dan nilai writing kurang dari 35.
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    parental_level_of_education LIKE 'high%'
    AND race_or_ethnicity NOT IN ('group A', 'group B')
    AND reading_score < 35;