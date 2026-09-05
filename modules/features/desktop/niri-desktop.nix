{ __findFile, ... }:
{
  den.ful.desktop.niri = {
    includes = [
      <WM/Niri>
      <bar/noctalia>
      <audio/pipewire>
      <browser/zen>
      <terminal/kitty>
      <video/mpv>
      <image/imv>
      <music/rmpc>
      <editor/helix>
    ];

    homeManager = { pkgs, ...} : {
      home.packages = with pkgs; [
        telegram-desktop
      ];
    };
  };
}
