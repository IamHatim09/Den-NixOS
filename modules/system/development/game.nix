{
  den.aspects.game = {
    homeManager = { pkgs, ... }: {
      home.packages = [ pkgs.godot ];
    };
  };
}
