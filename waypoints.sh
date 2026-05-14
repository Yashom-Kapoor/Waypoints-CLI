# Define function/command wp
wp() {
    # Set result to output of waypoints-cli
    # Pass all arguments to waypoints-cli ($@)
    result=$(~/.waypoints-cli/bin/waypoints-cli "$@")

    # -d => if directory exists
    if [ -d "$result" ]; then
        cd "$result"
    else
        echo "$result"
    fi #End of if function
}
