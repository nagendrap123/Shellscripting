#!/bin/bash

# Present a menu for selecting a programming language
select language in "Python" "Java" "JavaScript" "Go" "Exit"
do
    case $language in
        "Python")
            echo "You selected Python"
            ;;
        "Java")
            echo "You selected Java"
            ;;
        "JavaScript")
            echo "You selected JavaScript"
            ;;
        "Go")
            echo "You selected Go"
            ;;
        "Exit")
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
