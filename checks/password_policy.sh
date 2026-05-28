#!/bin/bash
echo ""
echo "[CHECK]  Password Max Days"


password_max_days=$(grep  "^[[:space:]]*PASS_MAX_DAYS " /etc/login.defs | awk '{print $2}')
if [ -z "$password_max_days" ]; then
	echo "[FAIL] PASS_MAX_DAYS is not configured."
elif [ "$password_max_days" - le 365 ]; then
	echo "[PASS] PASS_MAX_DAYS configured securely."
else
	echo "[FAIL] Password Maximum age exceeds recommended threshold."
fi 

