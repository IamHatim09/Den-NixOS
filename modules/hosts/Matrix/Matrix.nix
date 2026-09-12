{ den, pkgs, ... }:
{
  # host aspect
  den.aspects.Matrix = {
    # host NixOS configuration
    includes = with den.aspects; [
      sddm
      catppuccin

      base
      game

      hatim
    ];
    nixos =
      { pkgs, ... }:
      {
				imports = [ ./_hardware.nix ];
        environment.systemPackages = [ pkgs.hello ];
      };

    # host provides default home environment for its users
    provides.to-users.homeManager =
      { pkgs, ... }:
      {
        home.packages = [ pkgs.vim ];
      };
  };
}
