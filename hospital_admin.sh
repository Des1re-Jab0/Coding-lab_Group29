
#!/bin/bash
=======
>>>>>>> 1c60597 (fixing an issue in initialising a system)
initialize_system()
{
    for dir in active_logs archived_logs reports; do
        if [ -d "$dir" ]; then
            echo "$dir directory already exists."
        else
            echo "Creating $dir directory..."
            mkdir "$dir"
        fi
    done
}
initialize_system

