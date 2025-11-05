#!/bin/bash

set -e

if [[ "$(uname)" = "Darwin" ]]; then
  time brew install stellar-cli || true
  time brew remove stellar-cli || true
fi
