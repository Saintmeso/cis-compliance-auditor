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

##  Current Features
- SSH root login auditing
- PASS/FAIL compliance reporting
- Modular audit  architecture
- Firewall status validation
- SSH Password Authentication checks
- Bash-based control validation



##  Current Controls

| Control | Description |
|---|---|
|SSH Root Login| Validates whether direct root SSH access is disabled|
|Firewall Status| Checks if firewall services are enabled|
|SSH Password Authentication| Checks if SSH Password Authentication is enabled|


## Usage
Run the auditor:
- ./cisaudit.sh

## Project Structure

````plaintext
checks/
-ssh_root_login.sh
-firewall_enabled.sh
-password_auth.sh
reports/
cisaudit.sh
README.md
```

## Future additions
-Password Policy auditing
-Auditd Validation
-JSON reporting
-Compliance reporting
-HTML Reports

## Future additions to SSH Security
-Max Auth attempts
-Idle timeout
-Protocol version

## Future aditions to Firewall Checks
-Default deny incoming
-only necessary ports open
-SSH allowed explicitly
