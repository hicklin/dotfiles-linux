# Nix-OS confurations

Here are modular nixos configurations.
Use these configurations by importing them into your `/etc/nixon/configurations.nix`.

This repos attemps to avoid using home-manager, hence, some of the setpus may require manual steps.
The following sections descride the different modules and the manual steps required.

## ZSH

`zsh.nix` installs `zsh` and `oh-my-zsh`. 
This nix file is also used to manage `.zshrc`.
The `.zshrc` file created by `zsh.nix` can be found in `/etc`.
Hence, we need to point the home `.zshrc` to this file.
This can be done by symlinking or `echo 'source /etc/zshrc' > ~/.zshrc`.

To avoid a hacky looking `.nix` file, I have opted to manage the oh-my-zsh themes and plugins outside the `.nix` file.
Hence we need to symlink the `configs/.oh-my-zsh` to our home directory.
`ln -s <path to this repo>/configs/.oh-my-zsh ~/.`