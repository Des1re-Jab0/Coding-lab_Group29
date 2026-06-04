<<<<<<< HEAD
#!/bin/bash
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
=======
<<<<<<< HEAD

#!/bin/bash

=======
#!/bin/bash
>>>>>>> c1f09ed (Add initialize_system function)
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
>>>>>>> 96a81eb (final step)
}
initialize_system
