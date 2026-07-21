#!/bin/bash

run_menu()  {
    options=("option1" "option2" "option3" "Exit")

    PS3="please choose and option: "

    select option in ${options[@]}; do 
        case $option in
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

run_menu