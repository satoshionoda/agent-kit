#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <skill-name>" >&2
  exit 1
fi

skill_name="$1"
repo_root="$(cd "$(dirname "$0")/.." && pwd)"
source_dir="$repo_root/Skills/$skill_name"
target_root="${HOME}/.codex/skills"
target_link="$target_root/$skill_name"

if [[ ! -d "$source_dir" ]]; then
  echo "Skill source directory does not exist: $source_dir" >&2
  exit 1
fi

if [[ ! -f "$source_dir/SKILL.md" ]]; then
  echo "SKILL.md does not exist: $source_dir/SKILL.md" >&2
  exit 1
fi

mkdir -p "$target_root"

if [[ -L "$target_link" ]]; then
  current_target="$(readlink "$target_link")"
  if [[ "$current_target" == "$source_dir" ]]; then
    echo "Link already exists: $target_link -> $source_dir"
    exit 0
  fi
  echo "A different symlink already exists: $target_link -> $current_target" >&2
  exit 1
fi

if [[ -e "$target_link" ]]; then
  echo "Target already exists and is not a symlink: $target_link" >&2
  exit 1
fi

ln -s "$source_dir" "$target_link"
echo "Created symlink: $target_link -> $source_dir"
