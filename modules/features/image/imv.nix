{
  den.aspects.imv = {
    homeManager = { pkgs, ... }: {
      home.packages = with pkgs; [
        imv
      ];
    };
  };
}
