function is_installed() {
    command -v "$1" &> /dev/null 
}
