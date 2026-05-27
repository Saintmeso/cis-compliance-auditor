#!/bin/bash

echo ""
echo "[CHECK] SSH Password Authentication"

if grep -q  "^PasswordAuthentication no" /etc/ssh/sshd_config; then
	echo "[PASS] SSH Password Authentication disabled"
else
	echo "[FAIL] SSH Password Authentication enabled"
fi

