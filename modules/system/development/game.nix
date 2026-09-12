{ pkgs, ... }:
{
  den.aspects.game = {
    homeManager = {
      home.packages = [ pkgs.godot ];
    };
  };
}
