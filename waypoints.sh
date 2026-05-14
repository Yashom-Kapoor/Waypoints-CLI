# Define function/command wp
wp() {
    cmd="$1" # Capture first argument

    # Handle uninstall
    if [ "$cmd" = "uninstall" ] || [ "$cmd" = "add" ]; then
        ~/.waypoints-cli/bin/waypoints-cli "$@"
    
    else 
        # Set result to output of waypoints-cli
        # Pass all arguments to waypoints-cli ($@)
        result=$(~/.waypoints-cli/bin/waypoints-cli "$@")
        exit_code=$? # Exit cocde to determine cd or not

        # -d => if directory exists
        if [ $exit_code -eq 0 ] && [ -d "$result" ]; then
            cd "$result"
        else
            echo "$result"
        fi #End of if function
    fi
}
