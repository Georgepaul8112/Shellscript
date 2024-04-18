#!/bin/bash
#George Paul
# Function to validate password strength
validate_password() {
    local password=$1
    local valid=true
    
    # Check the length (minimum 8 characters)
    if [[ ${#password} -lt 8 ]]; then
        echo "Password must be at least 8 characters long."
        valid=false
    fi
    
    # Check if the password contains both lowercase and uppercase letters
    if ! [[ "$password" =~ [a-z] ]]; then
        echo "Password must contain at least one lowercase letter."
        valid=false
    fi
    if ! [[ "$password" =~ [A-Z] ]]; then
        echo "Password must contain at least one uppercase letter."
        valid=false
    fi
    
    # Check if the password contains at least one digit
    if ! [[ "$password" =~ [0-9] ]]; then
        echo "Password must contain at least one number."
        valid=false
    fi
    
    # Return true if the password is valid
    if $valid; then
        echo "Password is strong."
    else
        echo "Password is weak."
    fi
}

# Read password from the user (using -s to hide the input)
echo -n "Enter a password to validate: "
read -s password
echo  # Move to a new line after reading the password

# Validate the password
validate_password "$password"

