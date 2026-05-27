# cis-compliance-auditor
A Linux CIS benchmark auditing tool written in Bash

##  Current Features
- SSH root login compliance auditing
- PASS/FAIL compliance reporting
- Modular Security check architecture
- Firewall status auditing
- SSH Password Authentication Auditing

##  Current Controls
- SSH Root Login 
- Firewall Status
- SSH Password Authentication
## Usage
Run the auditor:
- ./cisaudit

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


```bash
./cisaudit.sh


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
