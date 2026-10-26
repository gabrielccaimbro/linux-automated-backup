#!/bin/bash

ORIGEM="$HOME/dados_importantes"
DESTINO="$HOME/meus_backups"

DATA=$(date +%Y%m%d_%H%M%S)
NOME_ARQUIVO="backup_$DATA.tar.gz"

echo "--- Iniciando processo de backup: $DATA ---"

tar -czf "$DESTINO/$NOME_ARQUIVO" -C "$HOME" dados_importantes

if [ $? -eq 0 ]; then
    echo "[SUCESSO] Backup criado com exito em: $DESTINO/$NOME_ARQUIVO"
else
    echo "[ERRO] Falha ao tentar criar o arquivo de backup!" >&2
    exit 1
fi

find "$DESTINO" -type f -name "backup_*.tar.gz" -mtime +7 -exec rm {} \;
echo "[INFO] Limpeza de arquivos com mais de 7 dias executada."
echo "------------------------------------------"

