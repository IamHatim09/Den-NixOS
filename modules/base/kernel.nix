{ pkgs, ... }:
{
  den.default.nixos = {
    boot.kernelPackages = pkgs.linuxPackages_zen;
  };
}
