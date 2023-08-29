#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

#go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.54

CGO_ENABLED=1 staticcheck -tags "fts5" -tests -f stylish -checks all,-ST1000 ./...
