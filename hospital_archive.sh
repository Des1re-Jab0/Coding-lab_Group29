#!/bin/bash

echo "=== KNH Log Archiving Process ==="
mkdir -p archived_logs

TIMESTAMP=$(date +"%Y%m%d_%H%M")

echo "Archive timestamp: $TIMESTAMP"

# Heart Rate Log
if [ -f "active_logs/heart_rate_log.log" ]; then
    mv active_logs/heart_rate_log.log \
       archived_logs/heart_rate_log_${TIMESTAMP}.log

    touch active_logs/heart_rate_log.log

    echo "Archived heart_rate_log"
else
    echo "heart_rate_log.log not found"
fi

# Temperature Log
if [ -f "active_logs/temperature_log.log" ]; then
    mv active_logs/temperature_log.log \
       archived_logs/temperature_log_${TIMESTAMP}.log

    touch active_logs/temperature_log.log

    echo "Archived temperature_log"
else
    echo "temperature_log.log not found"
fi

# Water Usage Log
if [ -f "active_logs/water_usage_log.log" ]; then
    mv active_logs/water_usage_log.log \
       archived_logs/water_usage_log_${TIMESTAMP}.log

    touch active_logs/water_usage_log.log

    echo "Archived water_usage_log"
else
    echo "water_usage_log.log not found"
fi

echo ""
echo "Archive run completed at: $(date)"
echo "=== Archiving Complete ==="
