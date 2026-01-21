echo "Backing up existing configs..."

mv ~/.config/fish/ ~/.config/fish.bak/
mv ~/.config/nvim/ ~/.config/nvim.bak

echo "Applying Nix config via Home MNGR"

home-manager switch --flake .
