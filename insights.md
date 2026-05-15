# Threat Investigation Insights

## Investigation Summary
This investigation analyzed login authentication activity to identify suspicious login behavior, repeated failed attempts, and potential brute-force indicators.

## Key Findings

### Suspicious IP Activity
Multiple failed login attempts originated from the same IP addresses, particularly:
- 192.168.1.10
- 203.0.113.5

These IPs targeted multiple accounts and generated repeated authentication failures.

### High-Value Account Targeting
The accounts most frequently targeted were:
- admin
- root

These accounts are commonly associated with elevated privileges and are often targeted during unauthorized access attempts.

### Geographic Risk Indicators
The highest concentration of failed login activity originated from:
- Russia
- China

While geographic origin alone does not confirm malicious intent, repeated failed attempts from these regions may justify additional monitoring.

### Threat Pattern Observations
The investigation revealed patterns consistent with:
- repeated password guessing
- brute-force behavior
- account targeting from recurring IP addresses

## Conclusion
This analysis demonstrates how SQL can be used to investigate security logs, identify suspicious authentication behavior, and support threat detection workflows commonly used in SOC environments.
