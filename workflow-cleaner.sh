#!/bin/bash

gh run list --status failure --limit 200 --json databaseId --jq '.[].databaseId' | xargs -I{} gh run delete {}
gh run list --status cancelled --limit 200 --json databaseId --jq '.[].databaseId' | xargs -I{} gh run delete {}
