rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
sudo nixos-rebuild switch --flake ~/flakes#CatP   --override-input nvim-config path:/home/omniladder/Projects/nvim-config
