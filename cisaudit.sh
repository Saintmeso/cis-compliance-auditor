#!/bin/bash

echo "=================================="
echo " CIS Compliance Auditor "
echo "=================================="

./checks/ssh_root_login.sh
./checks/firewall_enabled.sh
./checks/password_auth.sh
