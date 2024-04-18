#!/bin/bash
#George Paul 23mca029
# Function to display menu
display_menu() {
    echo "Menu:"
    echo "1. List current directory"
    echo "2. Print working directory"
    echo "3. Display date"
    echo "4. Display users logged in"
    echo "5. Exit"
}
# Function to list current directory
list_directory() {
    echo "Current directory:"
    ls -l
}
# Function to print working directory
print_working_directory() {
    echo "Working directory:"
    pwd
}
# Function to display date
display_date() {
    echo "Date:"
    date
}
# Function to display users logged in
display_users() {
    echo "Users logged in:"
    who
}
# Main function
main() {
    while :
    do
        display_menu
        echo "Enter your choice:"
        read choice
        case $choice in
            1) list_directory ;;
            2) print_working_directory ;;
            3) display_date ;;
            4) display_users ;;
            5) echo "Exiting..." && break ;;
            *) echo "Invalid choice. Please enter a valid option." ;;
        esac
    done
}
# Call main function
main
