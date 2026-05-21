SELECT STRFTIME ('%Y-%m', u.signup_date) AS cohort_month,
	(CAST(STRFTIME('%Y', s.billing_date) as INTEGER) - CAST(STRFTIME('%Y', u.signup_date) AS INTEGER)) * 12 +
    (CAST(STRFTIME('%m', s.billing_date) AS INTEGER) - CAST(STRFTIME('%m', u.signup_date) AS INTEGER)) as cohort_index,
     COUNT(DISTINCT s.user_id) as active_users,
     SUM(s.mrr_amount) as total_mrr
     FROM users as u
     JOIN subscriptions as s 
     ON u.user_id = s.user_id
     GROUP BY 1, 2
     ORDER by cohort_month ASC, cohort_index ASC;
