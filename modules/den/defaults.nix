{
  inputs,
  lib,
  den,
  ...
}: {
  flake-file.inputs = {
    den.url = "github:denful/den";
    flake-file.url = "github:vic/flake-file";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  den.default = {
    include = [
      den.batteries.define-user
      den.batteries.hostname
    ];

    nixos = {
      system.stateVersion = "26.05";
      home-manager.backupFileExtension = "hm-backup";
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
    };

    homeManager.home.stateVersion = "26.05";
  };
  # enable hm by default
  den.schema.user.classes = lib.mkDefault ["homeManager"];
}
