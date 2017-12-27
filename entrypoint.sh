#!/usr/bin/env bash
COMMAND=$1
mkdir -p /tmp/logs
chown -R daemon /tmp
if [ "${COMMAND}" == "spark-submit" ]; then
    shift
    gosu daemon spark-submit $@
elif [ "${COMMAND}" == "spark-shell" ]; then
    shift
    gosu daemon spark-shell $@
elif [ "${COMMAND}" == "spark-standalone" ]; then
    shift
    gosu daemon spark-shell $@
elif [ "${COMMAND}" == "spark-master" ]; then
    shift
    gosu daemon spark-shell $@
elif [ "${COMMAND}" == "spark-worker" ]; then
    shift
    gosu daemon spark-shell $@
else
    exec $@
fi
