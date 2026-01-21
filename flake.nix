{
  description = "home MNGR config of hisui";

  inputs = {
    # Nixpkgs のリポジトリ
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux"; # Linuxならこれ、Mac(M1/M2)なら aarch64-darwin
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."hisui" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix ];
      };
    };
}

