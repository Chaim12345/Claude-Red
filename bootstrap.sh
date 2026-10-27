#!/usr/bin/env bash
set -euo pipefail
# Bootstrap reverse-engineering environment after reset
sudo apt-get update
sudo apt-get install -y python3 python3-pip openjdk-21-jdk-headless apktool binutils binwalk unzip curl
python3 -m pip install --break-system-packages justapk pycryptodome
# jadx
mkdir -p /tmp/kilo
curl -sL https://github.com/skylot/jadx/releases/download/v1.5.1/jadx-1.5.1.zip -o /tmp/kilo/jadx.zip
unzip -q /tmp/kilo/jadx.zip -d /tmp/kilo/jadx
# ghidra
curl -sL https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.2.1_build/ghidra_11.2.1_PUBLIC_20241105.zip -o /tmp/kilo/ghidra.zip
unzip -q /tmp/kilo/ghidra.zip -d /tmp/kilo/ghidra
echo "Bootstrap complete"
