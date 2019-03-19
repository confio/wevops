#!/bin/bash
set -o errexit -o nounset -o pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${SCRIPT_DIR}/env

sudo mkdir -p ${WORK}
sudo chmod 777 ${WORK}

# set up new keys and initialize all configs
docker run --rm --user="$UID" -v "${WORK}:/tendermint" "${TENDERMINT}" init
docker run --rm --user="$UID" -v "${WORK}:/tendermint" "${WEAVE}" -home /tendermint init CASH 1234567890123456789012345678901234567890
