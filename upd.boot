nix flake update
echo "********************************************************************************"
echo "* nix flake update done.                                                       *"
echo "********************************************************************************"
git status
echo "********************************************************************************"
sudo cp -r * /etc/nixos/
sudo nixos-rebuild -j 16 boot --upgrade --show-trace --flake .#yoshi
#sudo nixos-rebuild switch  --upgrade --show-trace --flake .#yoshi
