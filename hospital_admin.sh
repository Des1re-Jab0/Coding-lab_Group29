#!/bin/bash

secure_data() {
	echo ""

	echo "===Securing active_logs directory ==="

	chmod 700 active_logs 

	echo "Permission applied. Current state of active_logs"

	ls -ld active_logs
}
