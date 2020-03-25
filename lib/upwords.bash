set -e
set -u

UpWords.translate() {
  words=()

  text=$(echo "$1" | tr '[:upper:]' '[:lower:]')

  for word in $text; do
    words+=("${word^}")
  done

  echo "${words[*]}"
}
