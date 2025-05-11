/***Question: What are the top-paying data analyst jobs?**

- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries.
- Why? Aims to highlight the top-paying opportunities for Data Analysts, offering insights into employment options and
location flexibility.*/

SELECT
    job_postings_fact.job_id,
    company_dim.name,
    job_postings_fact.job_title,
    job_postings_fact.salary_year_avg,
    job_postings_fact.job_work_from_home
FROM
    job_postings_fact
LEFT JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
ORDER BY
    salary_year_avg DESC
LIMIT 10;

