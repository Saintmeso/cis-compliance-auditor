#!/bin/bash

echo ""
echo "[CHECK] SSH Root Login"

if grep -q "^PermitRootLogin no" /etc/ssh/sshd_config; then
	echo "[PASS] Root login disabled"
else
	echo "[FAIL] Root login enabled"
fi

echo ""
echo "[CHECK] Max Authorization Attempts"

max_tries=$(grep "^[[:space:]]*MaxAuthTries " /etc/ssh/sshd_config | awk '{print $2}') 

if [ -z "$max_tries" ]; then
	echo "[FAIL] SSH MaxAuthTries is not configured."
elif [ "$max_tries" -le 5 ]; then
	echo "[PASS] SSH MaxAuthTries configured securely."
else
	echo "[FAIL] Too many login attempts may be allowed."
fi

echo ""
echo "[CHECK] Login Grace Time"

grace_time=$(grep "^[[:space:]]*LoginGraceTime " /etc/ssh/sshd_config | awk '{print $2}')
if [ -z "$grace_time" ]; then
	echo "[FAIL] Login grace time is not configured"
elif [ "$grace_time"  -le 60 ]; then
	echo "[PASS] LoginGraceTime configured securely."
else
	echo "[FAIL] LoginGraceTime exceeds recommended threshold"
fi
