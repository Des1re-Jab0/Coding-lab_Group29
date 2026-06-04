
#!/bin/bash 

secure_data() {
	echo ""
	echo "=== Securing active_logs directory ==="
	
	chmod 700 active_logs 
	
	echo "Permissions applied. Current state of active_logs"
	
	ls -ld active_logs
=======

#!/bin/bash
initialize_system() {
 for dir in active_logs archived_logs reports; do
        if [ -d "$dir" ]; then
            echo "$dir directory already exists."
        else
            echo "Creating $dir directory..."
            mkdir "$dir"
        fi
    done
}
initialize-system


