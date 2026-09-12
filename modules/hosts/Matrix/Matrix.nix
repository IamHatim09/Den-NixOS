{ den, pkgs, ... }:
{
  # host aspect
  den.aspects.Matrix = {
    # host NixOS configuration
    includes = with den.aspects; [
      niri-desktop
      sddm
      catppuccin

      base
      game
    ];
    nixos =
      {
				imports = [ ./_hardware.nix ];
        environment.systemPackages = [ pkgs.hello ];
      };

    # host provides default home environment for its users
    provides.to-users.homeManager =
      {
        home.packages = [ pkgs.vim ];
      };
  };
}
