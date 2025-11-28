#!/bin/bash

# Script di installazione AIRchetipo per Mac/Linux
# Uso: ./install_airchetipo.sh <nome-progetto>

PROJECT=$1

if [ -z "$PROJECT" ]; then
    echo "Errore: specificare il nome del progetto"
    echo "Uso: ./install_airchetipo.sh <nome-progetto>"
    exit 1
fi

set -e  # Esce in caso di errore

echo "Download in corso..."
if curl -L "https://github.com/techreloaded-ar/AIRchetipo_dist/archive/refs/heads/main.zip" -o "main.zip"; then
    echo "Estrazione archivio..."
    unzip -q main.zip
    echo "Rinomina directory in $PROJECT..."
    mv AIRchetipo_dist-main "$PROJECT"
    echo "Pulizia file temporanei..."
    rm main.zip
    echo "Installazione completata con successo!"
else
    echo "Errore nel download del file"
    exit 1
fi
