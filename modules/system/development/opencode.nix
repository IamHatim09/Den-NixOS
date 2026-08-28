{
  den.ful.development.opencode.homeManager = { pkgs, pkgs-unstable, ... }: {
    programs.opencode = {
      enable = true;
      packages = pkgs-unstable.opencode;
    };
  };
}
