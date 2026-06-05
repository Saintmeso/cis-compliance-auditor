# cis-compliance-auditor
A Linux CIS benchmark auditing tool written in Bash for compliance validation and system hardening assessment.

## Overview
- This project is a bash-based Linux auditing tool designed to validate system configurations against CIS hardening recommendations.
- The goal of this project is to simulate real-world compliance auditing workflows by automating security configurations checks and generating PASS/FAIL audit results for common Linux hardening controls.

## Why I built This
I built this project to better understand
- Linux hardening
- CIS benchmarks
- Compliance automation
- Security auditing workflows
- Technical GRC operations
- Bash scripting
- Git and GitHub workflows
- Security control validation

##  Current Features
- SSH hardening auditing
- Password policy auditing
- Firewall status validation
- SSH Password Authentication auditing
- PASS/FAIL compliance reporting
- Modular audit architecture
- Bash-based control validation


##  Current Controls

| Control | Description |
|---|---|
|SSH Root Login| Validates whether direct root SSH access is disabled|
|Firewall Status| Checks if firewall services are enabled|
|SSH Password Authentication| Checks if SSH Password Authentication is enabled|
|PASS_MAX_DAYS| Validates password expiration policies|
|PASS_MIN_DAYS| Validates minimum password age policies
|Firewall Status| Checks if firewall services are enabled|
|PermitEmptyPasswords| Validates that empty SSH passwords are disabled|
|LoginGraceTime| Validates SSH login timeout configuration|

## Usage
Run the auditor:
- ./cisaudit.sh

## Project Structure

````plaintext
checks/
|--ssh_root_login.sh
|--firewall_enabled.sh
|--password_auth.sh
reports/
cisaudit.sh
README.md
```

## Example Output

```plaintext
[PASS] SSH Root Login Disabled
[FAIL] Firewall Service Inactive
[PASS] SSH Password Authentication Disabled
[PASS] LoginGraceTime configured securely
[PASS] Empty passwords disabled
```

## Future additions
-Auditd Validation
-JSON reporting
-HTML Reporting

## Future aditions to Firewall Checks
-Default deny incoming
-only necessary ports open
-SSH allowed explicitly

