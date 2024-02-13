function ask() {
    read -p "$1 (Y/n): " response
    [ -z "$response" ] || [ "$response" = "y" ]
}
