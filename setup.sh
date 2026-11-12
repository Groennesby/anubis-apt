#!/usr/bin/env bash
set -e
echo "𓂀 Configuring Official APT Repository for Anubis AI Agent (v1.3.0)..."
sudo rm -f /usr/bin/annubis /usr/local/bin/annubis 2>/dev/null || true
echo "deb [trusted=yes] https://raw.githubusercontent.com/Groennesby/anubis-apt/main stable main" | sudo tee /etc/apt/sources.list.d/anubis-agent.list >/dev/null
sudo apt-get update -o Acquire::http::No-Cache=True -o Acquire::https::No-Cache=True
sudo apt-get install -y --reinstall anubis
echo "✓ Anubis v1.3.0 installed! Type 'anubis' to start."
