
#!/bin/bash 

secure_data() {
	echo ""
	echo "=== Securing active_logs directory ==="
	
	chmod 700 active_logs 
	
	echo "Permissions applied. Current state of active_logs"
	
	ls -ld active_logs
}
#!/bin/bash

initialize_system() {

    if [ ! -d active_logs ]; then
        echo "Creating active_logs directory..."
        mkdir active_logs
    fi

    if [ ! -d archived_logs ]; then
        echo "Creating archived_logs directory..."
        mkdir archived_logs
    fi

    if [ ! -d reports ]; then
        echo "Creating reports directory..."
        mkdir reports
    fi
}
main() {
	secure_data
}
main
