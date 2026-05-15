## FAILED LOGINS BY IP

SELECT ip_address,
       COUNT(*) AS failed_attempts
FROM `my-project-3531645.advanced_login_data.login_data`
WHERE status = 'FAILED'
GROUP BY ip_address
ORDER BY failed_attempts DESC;

## TARGETED USERS

SELECT username,
       COUNT(*) AS failed_logins
FROM `my-project-3531645.advanced_login_data.login_data`
WHERE status = 'FAILED'
GROUP BY username
ORDER BY failed_logins DESC;

## HIGH RISK COUNTRIES

SELECT country,
       COUNT(*) AS suspicious_activity
FROM `my-project-3531645.advanced_login_data.login_data`
WHERE status = 'FAILED'
GROUP BY country
ORDER BY suspicious_activity DESC;

## IP RISK CLASSIFICATION

SELECT ip_address,
      COUNT(*) AS failed_attempts,
      CASE
           WHEN COUNT(*) >= 4 THEN 'CRITICAL'
           WHEN COUNT(*) >= 2 THEN 'WARNING'
           ELSE 'LOW'
      END AS threat_level
FROM `my-project-3531645.advanced_login_data.login_data`
WHERE status = 'FAILED'
GROUP BY ip_address
ORDER BY failed_attempts DESC;

## MULTIPLE USERS TARGETED BY SAME IP

SELECT ip_address,
       COUNT(DISTINCT username) AS targeted_users
FROM `my-project-3531645.advanced_login_data.login_data`
WHERE status = 'FAILED'
GROUP BY ip_address
ORDER BY targeted_users DESC;

## HIGH-RISK IP FILTER

SELECT ip_address,
       COUNT(*) AS failed_attempts
FROM `my-project-3531645.advanced_login_data.login_data`
WHERE status = 'FAILED'
GROUP BY ip_address
HAVING COUNT(*) >= 3
ORDER BY failed_attempts DESC;

## FAILED LOGIN TIMELINE

SELECT timestamp,
       username,
       ip_address
FROM `my-project-3531645.advanced_login_data.login_data`
WHERE status = 'FAILED'
ORDER BY timestamp ASC;
