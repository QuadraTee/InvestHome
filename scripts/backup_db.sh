#!/usr/bin/env bash
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$APP_DIR"

mkdir -p backups

if [ ! -f finance.db ]; then
    echo "No finance.db found. Nothing to back up."
    exit 0
fi

BACKUP="backups/finance_backup_$(date +%F_%H-%M-%S).db"
cp finance.db "$BACKUP"
echo "Backup created: $BACKUP"
