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
