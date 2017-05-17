#!/usr/bin/env bash
COMMAND=$1
mkdir -p /tmp/logs
chown -R spark /tmp
if [ "${COMMAND}" == "submit" ]; then
    shift
    # TODO: parse out and download s3 urls
    gosu spark spark-submit $@
else
    gosu spark $@
fi
