{ inputs, ... }:
{
  flake-file.inputs = {
    noctalia.url = "github:noctalia-dev/noctalia";
    noctalia.inputs.nixpkgs.follows = "nixpkgs";
  };
  den.ful.bar.noctalia.homeManager = {
    imports = [ inputs.noctalia.homeModules.default ];
    enable = true;
  };
}
