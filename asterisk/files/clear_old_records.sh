#!/bin/bash

# Удаляем записи и факсы старше 3х месяцев
set -euo pipefail

SPOOL_DIR="/var/spool/asterisk"

find "${SPOOL_DIR}/monitor" -name "*.wav" -mtime +90 -exec rm -f {} \;
find "${SPOOL_DIR}/fax" -name "*.tif" -mtime +90 -exec rm -f {} \;
find "${SPOOL_DIR}/fax" -name "*.pdf" -mtime +90 -exec rm -f {} \;
