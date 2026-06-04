#!/bin/bash

initialize_system() {
    echo ">>> Initializing system directories..."
    for dir in active_logs archived_logs reports; do
        if [ -d "$dir" ]; then
            echo "$dir already exists."
        else
            echo "Creating $dir directory..."
            mkdir "$dir"
        fi
    done
}

secure_data() {
    echo ">>> Securing active_logs directory..."
    chmod 700 active_logs
    echo ">>> Permissions applied:"
    ls -ld active_logs
}

# Member 3 - Orchestration Logic
echo "Checking system requirements..."
if ! command -v python3 &> /dev/null; then
    echo "ERROR: python3 not installed."
    exit 1
else
    echo "python3 found: $(python3 --version)"
fi

if [ ! -f "hospital_system.py" ]; then
    echo "WARNING: hospital_system.py not found."
else
    echo "hospital_system.py found."
fi

echo "========================================="
echo "   KNH Hospital Admin System Starting   "
echo "========================================="

initialize_system
secure_data

echo "========================================="
echo "  System Environment Secured"
echo "  Date: $(date)"
echo "========================================="
=======
main() {
	secure_data
}
main


