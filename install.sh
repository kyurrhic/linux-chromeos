#!/bin/bash
set -euo pipefail

URL="https://download-chromium.appspot.com/dl/Linux_ChromiumOS_Full?type=snapshots"
ZIP="/tmp/cros.zip"

cd "$(dirname "$0")"

if command -v wget >/dev/null 2>&1; then
    echo "Downloading with wget..."
    wget -O "$ZIP" "$URL"
elif command -v curl >/dev/null 2>&1; then
    echo "Downloading with curl..."
    curl -fL -o "$ZIP" "$URL"
else
    echo "Wget or curl is required for this script to work." >&2
    exit 1
fi

if ! command -v unzip >/dev/null 2>&1; then
    echo "Unzip is required for this script to work." >&2
    exit 1
fi

EXTRACTED="/tmp/chrome-chromeos"

echo "Extracting /tmp/cros.zip to /tmp/chrome-chromeos/..."
rm -rf "$EXTRACTED"
unzip -o -q "$ZIP" -d /tmp

if [ ! -d "$EXTRACTED" ]; then
    echo "$EXTRACTED wasn't found, re-run the script." >&2
    exit 1
fi

echo "Moving files to $(pwd)..."
cp -a "$EXTRACTED"/. .
rm -rf "$EXTRACTED"

echo "Done."
