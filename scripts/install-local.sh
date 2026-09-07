#!/usr/bin/env bash
set -euo pipefail

# Создаёт безопасные ссылки на skills из этого клона. Не перезаписывает чужие файлы.
repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
codex_home="${CODEX_HOME:-"$HOME/.codex"}"
skills_dir="$codex_home/skills"

install_link() {
  local source_path="$1"
  local target_path="$2"

  if [ -L "$target_path" ] && [ "$(readlink "$target_path")" = "$source_path" ]; then
    return
  fi
  if [ -e "$target_path" ] || [ -L "$target_path" ]; then
    printf 'Не изменено: %s уже существует. Сравните его с %s.\n' "$target_path" "$source_path" >&2
    return 1
  fi
  ln -s "$source_path" "$target_path"
}

mkdir -p "$skills_dir"
for skill in python-backend computer-vision analytics remote-gpu; do
  install_link "$repo_dir/skills/$skill" "$skills_dir/$skill"
done

printf 'Skills установлены в %s. Профили из %s/agents используйте как versioned prompts.\n' "$skills_dir" "$repo_dir"
