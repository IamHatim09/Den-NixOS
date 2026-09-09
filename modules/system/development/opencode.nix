{
  den.aspects.opencode.homeManager = { pkgs, pkgs-unstable, ... }: {
    programs.opencode = {
      enable = true;
      packages = pkgs-unstable.opencode;
    };
  };
}
