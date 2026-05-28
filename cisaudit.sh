#!/bin/bash

echo "=================================="
echo " CIS Compliance Auditor "
echo "=================================="

./checks/ssh_hardening.sh
./checks/firewall_enabled.sh
./checks/password_auth.sh
./checks/password_policy.sh
