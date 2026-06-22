#!/usr/bin/env bash
set -euo pipefail

BOOK_DIR="src"
SUMMARY_FILE="$BOOK_DIR/SUMMARY.md"

echo "Generating ordered SUMMARY.md ..."
echo "# Summary" > "$SUMMARY_FILE"
echo "" >> "$SUMMARY_FILE"

# --- словарь акронимов/спец-написаний для fallback-заголовков
#     (используется, когда у файла нет H1 — напр. для пустых заготовок)
declare -A ACRONYMS=(
  [api]="API" [cdc]="CDC" [ci-cd]="CI/CD" [cli]="CLI" [cqrs]="CQRS"
  [css]="CSS" [dns]="DNS" [grpc]="gRPC" [http]="HTTP" [https]="HTTPS"
  [json]="JSON" [nosql]="NoSQL" [oltp]="OLTP" [olap]="OLAP" [oop]="OOP"
  [orm]="ORM" [php]="PHP" [rest]="REST" [rpc]="RPC" [sql]="SQL"
  [sre]="SRE" [spl]="SPL" [tcp]="TCP" [tls]="TLS" [udp]="UDP"
  [ui]="UI" [uuid]="UUID" [wal]="WAL" [yaml]="YAML"
)

# --- форматирование имени папки/файла в заголовок:
#     "_"/"-" → пробел, каждое слово с заглавной, акронимы из словаря
format_title() {
  local name="$1" out="" word
  name="${name//_/ }"
  name="${name//-/ }"
  for word in $name; do
    local lower="${word,,}"
    if [[ -n "${ACRONYMS[$lower]:-}" ]]; then
      out+="${ACRONYMS[$lower]} "
    else
      out+="${word^} "
    fi
  done
  echo "${out% }"
}

# --- заголовок страницы: сначала H1 из файла, иначе formatted-имя
get_title() {
  local file="$1" fallback="$2" h1
  if [[ -s "$file" ]]; then
    h1=$(grep -m1 '^# ' "$file" 2>/dev/null | sed 's/^#[[:space:]]*//') || true
    if [[ -n "$h1" ]]; then
      echo "$h1"
      return
    fi
  fi
  format_title "$fallback"
}

# --- рекурсивный обход каталогов
process_dir() {
  local dir="$1"
  local depth="$2"

  # если существует index.md — добавить его первым
  if [[ -f "$dir/index.md" ]]; then
    local rel="${dir#$BOOK_DIR/}/index.md"
    local title
    title=$(get_title "$dir/index.md" "$(basename "$dir")")
    printf "%*s- [%s](%s)\n" $((depth * 2)) "" "$title" "$rel" >> "$SUMMARY_FILE"
  fi

  # другие md‑файлы (без index.md и SUMMARY.md)
  for f in "$dir"/*.md; do
    [[ ! -e "$f" ]] && continue
    local base="$(basename "$f")"
    [[ "$base" == "index.md" || "$base" == "SUMMARY.md" ]] && continue
    local rel="${f#$BOOK_DIR/}"
    local title
    title=$(get_title "$f" "${base%.md}")
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
