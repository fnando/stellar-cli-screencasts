set -e

if [ "$(uname)" == "Linux" ] && [ ! -f bin/stellar ]; then
  latest_version=$(curl -sS -L https://api.github.com/repos/stellar/stellar-cli/releases/latest | jq --raw-output .tag_name | sed -E 's/v//')
  echo "=> Install stellar-cli v${latest_version}"
  mkdir -p bin
  curl -sS -L https://github.com/stellar/stellar-cli/releases/download/v${latest_version}/stellar-cli-${latest_version}-x86_64-unknown-linux-gnu.tar.gz | tar xzO stellar > bin/stellar
  chmod +x bin/stellar
fi
