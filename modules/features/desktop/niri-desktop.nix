{
  den.aspects.niri = {
    includes = [

    ];

    homeManager = { pkgs, ...} : {
      home.packages = with pkgs; [
        telegram-desktop
      ];
    };
  };
}
