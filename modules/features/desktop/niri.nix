{ den, pkgs, ... }:
{
  den.aspects.niri-desktop = {
    includes = with den.aspects; [
      Niri
      zen-browser
      fish
      kitty
      rmpc
      mpv
      imv
      helix
    ];

    homeManager = { pkgs, ... }: {
      home.packages = with pkgs; [
        telegram-desktop
      ];
    };
  };
}
