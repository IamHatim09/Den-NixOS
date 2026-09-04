{
  # host aspect
  den.aspects.Matrix = {
    # host NixOS configuration
    includes = [
      <desktop/niri>
      <theme/catppuccin>

      <development/base>
      <development/game>
    ]
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
