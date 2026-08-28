{
  den.default.nixos = { pkgs, ... }: {
    console = {
      font = "ter-114n";
      keymap = "us";
      packages = with pkgs; [
        terminus_font
      ];
    };
  };
}
