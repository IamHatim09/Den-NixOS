{ pkgs, pkgs-unstable, ... }:
{
  den.aspects.devenv.homeManager = {
    home.packages = [ pkgs-unstable.devenv ];
    programs.fish.interactiveShellInit = "devenv hook fish | source";
  };
}
