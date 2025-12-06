#!/usr/bin/env bash
set -euo pipefail

BOOK_DIR="src"
SUMMARY_FILE="$BOOK_DIR/SUMMARY.md"

echo "Generating ordered SUMMARY.md ..."
echo "# Summary" > "$SUMMARY_FILE"
echo "" >> "$SUMMARY_FILE"

# --- функция форматирования: первая буква заглавная, "_" → " "
format_title() {
  local name="$1"
  echo "$name" | sed 's/_/ /g' | sed 's/\b\(.\)/\u\1/g'
}

# --- рекурсивный обход каталогов
process_dir() {
  local dir="$1"
  local depth="$2"

  # если существует index.md — добавить его первым
  if [[ -f "$dir/index.md" ]]; then
    local rel="${dir#$BOOK_DIR/}/index.md"
    local title
    title=$(format_title "$(basename "$dir")")
    printf "%*s- [%s](%s)\n" $((depth * 2)) "" "$title" "$rel" >> "$SUMMARY_FILE"
  fi

  # другие md‑файлы (без index.md и SUMMARY.md)
  for f in "$dir"/*.md; do
    [[ ! -e "$f" ]] && continue
    local base="$(basename "$f")"
    [[ "$base" == "index.md" || "$base" == "SUMMARY.md" ]] && continue
    local rel="${f#$BOOK_DIR/}"
    local title
    title=$(format_title "${base%.md}")
    printf "%*s- [%s](%s)\n" $(((depth + 1) * 2)) "" "$title" "$rel" >> "$SUMMARY_FILE"
  done

  # подкаталоги — в алфавитном порядке
  local sub
  while IFS= read -r sub; do
    process_dir "$sub" $((depth + 1))
  done < <(find "$dir" -mindepth 1 -maxdepth 1 -type d | sort)
}

process_dir "$BOOK_DIR" 0

echo ""
echo "✅ SUMMARY.md создан: $SUMMARY_FILE"
