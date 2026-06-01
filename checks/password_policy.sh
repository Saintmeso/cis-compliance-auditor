#!/bin/bash
echo ""
echo "[CHECK]  Password Max Days"


password_max_days=$(grep  "^[[:space:]]*PASS_MAX_DAYS " /etc/login.defs | awk '{print $2}')
if [ -z "$password_max_days" ]; then
	echo "[FAIL] PASS_MAX_DAYS is not configured."
elif [ "$password_max_days" -le 365 ]; then
	echo "[PASS] PASS_MAX_DAYS configured securely."
else
	echo "[FAIL] Password Maximum age exceeds recommended threshold."
fi 


echo ""
echo "[CHECK] Password Min Days"


password_min_days=$(grep  "^[[:space:]]*PASS_MIN_DAYS " /etc/login.defs | awk '{print $2}')
if [ -z "$password_min_days" ]; then
	echo "[FAIL] PASS_MIN_DAYS is not configured."
elif [ "$password_min_days" -ge 1 ];then
	echo "[PASS] PASS_MIN_DAYS configured securely."
else
	echo "[FAIL] Password minimum age does not meet recommended threshold."
fi
