{ pkgs, ... }: {
  home.username = "hisui";
  home.homeDirectory = "/home/hisui";
  home.stateVersion = "23.11";
  home.packages = with pkgs; [
    # mise
    go
    lazygit
    neovim
    nodejs_25
    
    # npm
    bun
    nodePackages.pnpm
    # pipx
    uv

    # apt
    bat
    duf
    fd
    fish
    gh
    git
    httpie
    ripgrep
    tree
    unzip
  ];

  programs.fish.enable = true;
  programs.home-manager.enable = true;
};
