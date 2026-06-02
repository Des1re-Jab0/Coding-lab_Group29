#!/bin/bash

initialize_system() {
    echo ">>> Initializing system directories..."
    if [ ! -d "active_logs" ]; then
        mkdir active_logs
        echo "Creating active_logs directory..."
    else
        echo "active_logs already exists."
    fi
    if [ ! -d "archived_logs" ]; then
        mkdir archived_logs
        echo "Creating archived_logs directory..."
    else
        echo "archived_logs already exists."
    fi
    if [ ! -d "reports" ]; then
        mkdir reports
        echo "Creating reports directory..."
    else
        echo "reports already exists."
    fi
}

secure_data() {
    echo ">>> Securing active_logs directory..."
    chmod 600 active_logs
    echo ">>> Permissions applied:"
    ls -ld active_logs
}

echo "========================================="
echo "   KNH Hospital Admin System Starting   "
echo "========================================="

initialize_system

secure_data

echo "========================================="
echo "System Environment Secured"
echo "Date: $(date)"
echo "========================================="
