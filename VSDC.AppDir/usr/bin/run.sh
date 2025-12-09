#!/bin/sh
HERE="$(dirname "$(readlink -f "$0")")"
APPDIR="$HERE/.."

exec "$APPDIR/wine-devel_10.20-x86_64.AppImage" \
    "$APPDIR/FlashIntegro/VideoEditor/VideoEditor.exe"
