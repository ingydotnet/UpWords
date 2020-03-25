set -e
set -u

source upwords.bash

TestMLBridge.up-words() {
  UpWords.translate "$1"
}
