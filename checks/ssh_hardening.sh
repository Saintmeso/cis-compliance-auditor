#!/bin/bash

echo ""
echo "[CHECK] SSH Root Login"

if grep -q "^PermitRootLogin no" /etc/ssh/sshd_config; then
	echo "[PASS] Root login disabled"
else
	echo "[FAIL] Root login enabled"
fi
