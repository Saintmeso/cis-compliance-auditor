## Project Goal
I built this CIS Compliance Auditor to gain hands-on experience with technical GRC automation, Linux security hardening, and compliance validation. The project also helped me better my skills in BAsh scripting, Git/Github workflow knowledge, and understanding of CIS security benchmarks.

The goal of this auditor is to validate Linux system configurations against CIS style security recommendations using automated PASS/FAIL compliance checks. While creating this project, I focused mainly on understanding the reasoning behind each control rather than just writing the bash scripts for them.

This Project also helped me learn and understand:
- Bash scripting and Linux command-line workflows
- Configuration parsing using grep and awk
- Git version control and Github synchronization
- Modular scripting architecture
- SSH Hardening concepts
- Password Policy auditing
- Firewall Compliance validation

## Current Architecture

The project is built around a centralized audit runner called cisaudit.sh, whihc is the main execution line for the compliance framework. Running the auditor executes all integrgated compliance checks and returns a PASS/FAIL audit results based on the current Linux system configuration.

The auditor currently uses a modular scripting architecture where each compliance category is seperated into its own decicated Bash module inside the checks/ directory. This design keeps the entire project organized and scalable as additional compliance controls are implemented.

Current modules:
- ssh_hardening.sh
- firewall_enabled.sh
- password_auth.sh
- password_policy.sh

Each module focuses on a specific security domain and performs configuration validation against CIS style hardening recommendations.

For example:

- SSH hardening checks validate secure SSH configurations such as root login restrictions and authentication attempt limits.
- Firewall modules validate whether firewall protections are enabled.
- Password policy modules validate password aging configurations and authentication policies.

ADD SUCCESSFUL AUDIT RUN PIC HERE

With this current structure allows new compliance checks and security controls to be added easily withouth overcrowding the main audit runner. As this project evolves, additional modules and controls will continue to be added into the framework.

## SSH Hardening Module
Controls Implemented:
- PermitRootLogin
- MaxAuthTries

Reasoning:

- Root login is extremely dangerous as the user can bypass permissiong checks, and have unlimited access to any and all files as well as access to modify, delete, or overwrite them.
- Limiting SSH authentication attempts helps defend against bruteforce attacks by restricting the number of failed login attemps allowed before the connection is terminated, The lower the MaxAuthTries allowed, the more secure the system is. Therefor having this feature shown in the audit can give insight into password attempts to further secure a system.

Challenges Encountered:

- One main challenges I faced was during the implementation of MaxAuthTries, In /etc/ssh/sshd_config, the configuration for MaxAuthTries was commented out, meaning they were not actively enforced by the system which make me realize that I have to implement more accurate parsing logic to correclt distinguish between active and inactive configurations.
- Another challenge involed transitioning from simple exact-string matching to dynamic threshold validation. Instead of checking whether a value exactly matched a hardcoded number, the auditor needed to figure out whether configuration values fell withing secure compliance thresholds, for this auditor, it as MaxAuthTries <= 5.

## Firewall Module
Controls Implemented:
- UFW Status auditing

Reasoning:

- Firewalls play an extremely important role in reducing a system's attack surface by controlling inbound and outbound network traffic. Ensuring that UFW is enabled helps prevent unauthorized network access and limits exposure to unnecessary services and ports. The reason I implemented this was strictly for the purpose of validating if firewall protections are actively enabled on the Linux system using UFW (Uncomplicated Firewall)

Challenges:

- One challenge during implementing the firewall module was determinging how to correctly validate the firewall's active state. The auditor needed to interpret the output of ufw status and distinguish between active and inactive firewall configurations in order to produce reliable compliance results.

## Password Policy Module
Controls Implemented:
- PASS_MAX_DAYS
- PASS_MIN_DAYS

Reasoning:

- PASS_MAX_DAYS helps enforce password expiration policies by limiting how long a password can remain active before requiring a reset. The main reason I implemented this is to be able to have insight in the potential risk of long-term credential exposure and help mitigate the impact of compromised passwords remaining active for long periods of time.
- PASS_MIN_DAYS helps prevent rapid password cycling by enforcing a minimum number of days that must pass before a user can change their password again. Without this control documented, users may repeatedly change passwords in a short period of time in order to bypass password history requirements.

Challenges Encountered:

-One huge challenge I faced was that unlike simple PASS/FAIL string matching, the password policy rmodule required extracting numeric values from /etc/login.defs. and the thing that made it difficult for me was isolating only the numeric value for comparison which required me to learn grep, awk and command substitution.

## Bash Techniques Learned
- grep pattern matching
- awk field extraction
- bash variables
- command subtitution using $()
- numeric compaisons (-le, -ge)
- pipes (|)
- executable permissions (chmod +x)
- conditional logic (if/elif/else)
- modular scripting architecture

## Future Improvements
- PASS_MIN_DAYS validation
- LoginGraceTime auditing
- JSON reporting
- HTML report generation
- Remote Linux auditing
- Additional CIS benchmark coverage
- Logging/auditd validation
- Port auditing
- Service Auditing
