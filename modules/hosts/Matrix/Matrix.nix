{
  # host aspect
  den.aspects.Matrix = {
    # host NixOS configuration
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
