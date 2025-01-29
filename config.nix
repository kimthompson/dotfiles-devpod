{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "kim-tools";
      paths = [
        zsh-completions
        neovim
        go
        nodejs_22
        fd
        ripgrep
        fzf
        lazygit
      ];
    };
  };
}
