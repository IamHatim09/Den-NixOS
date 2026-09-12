{ pkgs, inputs, ... }:
{
  flake-file.inputs = {
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";
  };
  den.aspects.zen-browser = {
    homeManager = {
      # stylix.targets.zen-browser.profileNames = [ "default" ];
      home.packages = [ pkgs.zen-browser ];
    };
  };
}
