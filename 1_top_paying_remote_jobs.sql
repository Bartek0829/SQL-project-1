/*
Jakie są najlepiej płatne zawody w IT?
- Wskaż 10 najlepiej płatnych zawodów, w których można pracować zdalnie.
- Upewnij się, że pole z wynagrodzeniem nie zawiera pustych komórek.
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM   
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    salary_year_avg IS NOT NULL AND
    job_location = 'Anywhere'
ORDER BY
    salary_year_avg DESC
LIMIT
    10
;