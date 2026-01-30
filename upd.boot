treefmt
nix flake update
echo "********************************************************************************"
echo "* nix flake update done.                                                       *"
echo "********************************************************************************"
git status
echo "********************************************************************************"
sudo cp -r * /etc/nixos/
#sudo nixos-rebuild -j 16 boot --upgrade --show-trace --flake .#yoshi
#sudo nixos-rebuild switch  --upgrade --show-trace --flake .#yoshi

sudo nixos-rebuild -j16 boot --upgrade --show-trace --flake .#yoshi &>nixos-boot.log || (
  cat nixos-boot.log | grep --color error && false
)
