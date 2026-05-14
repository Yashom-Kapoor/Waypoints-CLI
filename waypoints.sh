# Define function/command wp
wp() {
    cmd="$1" # Capture first argument

    # Handle uninstall
    if [[ "$cmd" = "uninstall" || "$cmd" = "add" ]]; then
        ~/.waypoints-cli/bin/waypoints-cli "$@"
    
    else 
        # Set result to output of waypoints-cli
        # Pass all arguments to waypoints-cli ($@)
        result=$(~/.waypoints-cli/bin/waypoints-cli "$@")
        exit_code=$? # Exit cocde to determine cd or not

        # -d => if directory exists
        if [[ $exit_code -eq 0 && -d "$result" ]]; then
            cd "$result"
        else
            echo "$result"
        fi #End of if function
    fi
}

# Completion
_wp() {
    local completions
    local command

    command="${words[2]}"

    # add for <path>
    if [[ "$command" == "add" && $CURRENT -eq 3 ]]; then
        _path_files
        return
    fi

    if [[ "$command" == "add" && $CURRENT -ge 4 ]]; then
        return
    fi

    completions=("${(@f)$(
        ~/.waypoints/bin/waypoints-cli __complete "$command" "${words[CURRENT]}"
    )}")

    compadd -a completions
}

compdef _wp wp
