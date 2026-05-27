# Cis-Compliance-Auditor
A Linux CIS benchmark auditing tool written in Bash

##  Current Features
- SSH root login compliance auditing
- PASS/FAIL compliance reporting
- Modular Security check architecture
- Firewall status auditing

##  Current Controls
- SSH Root Login Disabled
- Firewall Disabled
## Usage
Run the auditor:


## Project Structure

````plaintext
checks/
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

##  Futre additions to SSH Security
-Password auth disabled
-Max Auth attempts
-Idle timeout
-Protocol version

##Futre aditions to Firewall Checks
-Default deny incoming
-only necessary ports open
-SSH allowed explicitly
