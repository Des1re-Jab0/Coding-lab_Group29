#!/bin/bash 
secure_data() {
    echo ""
    echo "=== Securing active_logs Directory ==="

    chmod 700 active_logs

    echo "Permissions applied. Current state of active_logs:"

    ls -ld active_logs
}
