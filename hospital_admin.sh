#!/bin/bash

initialize_system() {
    echo "Initializing system directories..."

    mkdir -p active_logs archived_logs reports
}

secure_data() {
    echo "Securing active_logs directory..."

    chmod 700 active_logs
    ls -l active_logs
}

initialize_system
secure_data

echo "System Environment Secured"
date
