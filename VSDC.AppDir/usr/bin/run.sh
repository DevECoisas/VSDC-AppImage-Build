#!/bin/bash

# Descobre o diretório onde o script está
APPDIR="$(dirname "$(readlink -f "$0")")"

# Caminho para o Wine interno do AppImage
WINE_BIN="$APPDIR/../wine/bin/wine"

# Prefixo Wine dentro do AppImage
WINEPREFIX="$APPDIR/../VSDC_prefix"

# Caminho do programa Windows
PROGRAM="C:/Program Files/FlashIntegro/VideoEditor/VideoEditor.exe"

# Verificação do prefixo
if [ ! -d "$WINEPREFIX" ]; then
    echo "[ERROR] Prefixo não encontrado em: $WINEPREFIX"
    echo "[ERROR] Abortar."
    exit 1
fi

# Verificação do Wine
if [ ! -x "$WINE_BIN" ]; then
    echo "[ERROR] Binário do Wine não encontrado em: $WINE_BIN"
    exit 1
fi

echo "[INFO] Iniciando VideoEditor..."
WINEPREFIX="$WINEPREFIX" "$WINE_BIN" "$PROGRAM"
