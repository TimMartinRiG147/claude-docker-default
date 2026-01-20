#!/bin/bash

echo "Waiting for VPN connection..."
until ping -c1 -W2 8.8.8.8 &>/dev/null; do
    sleep 2
done

echo "✓ VPN connected to Malta!"
echo "External IP: $(curl -s --max-time 5 ifconfig.me 2>/dev/null || echo 'unavailable')"

# Fix SSH permissions
if [ -d /root/.ssh ]; then
    chmod 700 /root/.ssh
    chmod 600 /root/.ssh/* 2>/dev/null || true
fi

exec "$@"