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
  xdg.configFile."fish".source = ./config/fish;
  xdg.configFile."nvim".source = ./config/nvim;
  programs.fish.enable = true;
  programs.home-manager.enable = true;
}
