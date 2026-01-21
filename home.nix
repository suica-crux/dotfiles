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
  # programs.git = {
  #   enable = true;
  #   settings = {
  #     user = {
  #       user.name = "suica-crux";
  #       user.email = "autumn@vipelar.com";
  #     };
  #     commit = {
  #       gpgsign = true;
  #     };
  #     credential = {
  #       helper = "!gh auth git-credential";
  #     };
  #   };
  #   signing = {
  #     key = "7FBA0C906284C1DB";
  #     signByDefault = true;
  #   };
  # };
  home.file.".gitconfig".text = ''
  [user]
    name = suica-crux
    email = autumn@vipelar.com
  [commit]
    gpgsign = true
  [user]
    signingKey = 7FBA0C906284C1DB
  [credential]
    helper = !gh auth git-credential
  '';
}
