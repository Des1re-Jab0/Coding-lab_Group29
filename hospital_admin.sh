#!/bin/bash
# ============================================
# hospital_admin.sh
# Member 1: initialize_system()
# Member 2: secure_data()
# Member 3: Orchestration logic + system check
# ============================================

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
    chmod 700 active_logs
    echo ">>> Permissions applied:"
    ls -ld active_logs
}

# ============================================
# Member 3 - Orchestration Logic
# ============================================

# Check Python3
echo "Checking system requirements..."
if ! command -v python3 &> /dev/null; then
    echo "ERROR: python3 not installed."
    exit 1
else
    echo "python3 found: $(python3 --version)"
fi

# Check hospital_system.py exists
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
