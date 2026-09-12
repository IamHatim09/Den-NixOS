{ pkgs, ... }:
{
  den.default.nixos = { pkgs, ... }: {
    boot.kernelPackages = pkgs.linuxPackages_zen;
  };
}
