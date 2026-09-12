{ pkgs, ... }:
{
  den.aspects.imv = {
    homeManager = {
      home.packages = with pkgs; [
        imv
      ];
    };
  };
}
