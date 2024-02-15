if is_installed "stow" && ask "Would you like to configure everything with stow?"; then
    stow . --adopt
    git reset --hard &> /dev/null
fi

echo "Installing tmux plugins"
if [ -d $HOME/.tmux/plugins/tpm/ ] ; then
    $HOME/.tmux/plugins/tpm/bin/install_plugins
fi

echo "Installation complete. Please restart your machine for changes to be made."
