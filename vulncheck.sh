#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

go install golang.org/x/vuln/cmd/govulncheck@latest

CGO_ENABLED=1 govulncheck -test -tags "fts5" ./...
