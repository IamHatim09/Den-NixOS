{ pkgs, inputs, ... }:
{
  flake-file.inputs = {
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";
  };
  den.aspects.zen-browser = {
    homeManager = { pkgs, ... }: {
      # stylix.targets.zen-browser.profileNames = [ "default" ];
      home.packages = [ inputs.zen-browser.packages.${pkgs.system}.default ];
    };
  };
}
