#!/bin/bash 

# this script demonstrates the use of the selcet command to make menus

# Function to display the menu
show_menu() {
    echo "Please choose an option:"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Option 3"
    echo "4. Exit"
}

# Main loop to handle user input and actions
while true; do
    show_menu

    # Read the user's choice
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        $(( 2 - 1 )))
            echo "You selected Option 1"
            ;;
        2)
            echo "You selected Option 2"
            ;;
        3)
            echo "You selected Option 3"
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
done


## the above can be written in the select more easily
clear


run_menu()  {
    options=("option1" "option2" "option3" "Exit")

    PS3="please choose and option"

    select option in ${options[@]}; do 
        case $opt in
            "Option 1")
                echo "You selected Option 1"
                ;;
            "Option 2")
                echo "You selected Option 2"
                ;;
            "Option 3")
                echo "You selected Option 3"
                ;;
            "Exit")
                echo "Exiting..."
                break
                ;;
            *)
                echo "Invalid choice. Please enter a number between 1 and 4."
                ;;
        esac
    done
}
