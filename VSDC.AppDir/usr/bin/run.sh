#!/bin/bash
APPDIR="$(dirname "$(readlink -f "$0")")/../.."

export WINEPREFIX="$APPDIR/VSDC_prefix"
export WINEDEBUG=-all
export WINEDLLOVERRIDES="mscoree,mshtml="

# Make the internal wine remain fully portable
export WINEENVIRONMENT="$APPDIR/VSDC_prefix"

# Run the embedded Wine.AppImage
"$APPDIR/usr/wine-stable_10.0-x86_64.AppImage" \
  --appimage-extract-and-run \
  "$WINEPREFIX/drive_c/Program Files/FlashIntegro/VideoEditor/VideoEditor.exe"
