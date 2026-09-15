{ inputs, lib, pkgs, ... }:
{
  flake-file.inputs = {
    niri-flake.url = "github:epireyn/niri-flake";
    niri-flake.inputs.nixpkgs.follows = "nixpkgs";
  };

  den.aspects.Niri = {
    nixos = {
      programs.niri = {
        enable = true;
      };
    };
    homeManager = {
      imports = [ inputs.niri-flake.homeModules.niri ];
      programs.niri = {
        enable = true;
        settings = {
          screenshot-path = "~/Picture/Screenshot/%s.png";
          hotkey-overlay.skip-at-startup = true;
          prefer-no-csd = true;
          xwayland-satellite = {
            enable = true;
            path = lib.getExe pkgs.xwayland-satellite;
          };
        };
      };
    };
  };
}
