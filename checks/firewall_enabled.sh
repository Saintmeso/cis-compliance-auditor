#!/bin/bash 

echo ""
echo "[CHECK] Firewall Status"

if ufw status | grep -q "Status: active"; then
	echo "[PASS] Firewall enabled"
else
	echo "[FAIL] Firewall disabled"
fi
