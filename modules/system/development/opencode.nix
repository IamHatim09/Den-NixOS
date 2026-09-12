{ pkgs, pkgs-unstable, ... }:
{
  den.aspects.opencode.homeManager = {
    programs.opencode = {
      enable = true;
      packages = pkgs-unstable.opencode;
    };
  };
}
