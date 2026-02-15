#!/bin/sh
mkdir -p /home/node/.openclaw
cat > /home/node/.openclaw/openclaw.json << 'EOF'
{
  "gateway": {
    "trustedProxies": ["100.64.0.0/10"]
  }
}
EOF
exec node openclaw.mjs gateway --allow-unconfigured --bind lan
