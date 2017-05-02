#!/usr/bin/env bash
COMMAND=$1
if [ "${COMMAND}" == "submit" ]; then
    shift
    $@
else
    $@
fi
