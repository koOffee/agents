#!/usr/bin/env bash
set -euo pipefail

# Запускайте на уже подключённом и проверенном удалённом хосте, из клона репозитория.
# Скрипт не открывает SSH-соединения, не устанавливает пакеты и не меняет конфигурацию MCP.
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$script_dir/install-local.sh"
