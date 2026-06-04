#!/bin/bash
# hospital_analysis.sh
# Member 5 (Clinical Analyst) + Member 6 (Facility Auditor)
# Analyzes live data in active_logs/ before it is archived

# ---- Member 5: find CRITICAL heart rate & temperature rows ----
process_vitals() {
    echo "Scanning for CRITICAL vitals..."

    mkdir -p reports                       
    output="reports/critical_alerts.txt"

    echo "Timestamp | Device_ID | Value" > "$output"   

    # grep CRITICAL rows from both logs, then keep the first 3 columns

    grep -h "CRITICAL" active_logs/heart_rate*.log active_logs/temperature*.log \
        | awk -F' *[|] *' '{ print $1 " | " $2 " | " $3 }' >> "$output"

    count=$(grep -h "CRITICAL" active_logs/heart_rate*.log active_logs/temperature*.log | wc -l)
    echo "Saved $count critical alert(s) to $output"
}

# ---- Member 6: average water usage for ICU_WATER_RESERVE ----
water_audit() {
    echo "Auditing ICU_WATER_RESERVE..."

    awk -F' *[|] *' '
        $2 == "ICU_WATER_RESERVE" { total += $3; count++ }
        END {
            if (count > 0)
                printf "ICU Water Reserve | readings: %d | average usage: %.2f\n", count, total / count
            else
                printf "No ICU_WATER_RESERVE readings found.\n"
        }
    ' active_logs/water_usage*.log
}

process_vitals
water_audit
