{ config, pkgs, ... }:

{
    environment.systemPackages = [
        pkgs.zsh
        pkgs.oh-my-zsh
    ];

    # Enable zsh and the oh-my-zsh module
    programs.zsh = {
        enable = true;
        ohMyZsh = {
            enable = true;
            theme = "spaceship-prompt/spaceship"; # Or your preferred theme
            plugins = [ 
                "git" 
                "sudo"
                "nix-shell" 
                "zsh-syntax-highlighting"
                "zsh-autosuggestions"
            ]; # Add desired plugins here
        };

        shellInit = ''
        export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
        '';

        # Using the dedicated 'shellAliases' option.
        shellAliases = {
            switch = "sudo nixos-rebuild switch";

            ll = "ls -l";
            la = "ls -la";

            mv="mv -iv";
            cp="cp -iv";
            rm="rm -iv";
            df="df -h";
            du="du -h";
            mkdir="mkdir -p";

            k9="kill -9";
        };

    };

    users.defaultUserShell = pkgs.zsh;
}




