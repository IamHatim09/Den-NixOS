{ inputs, ... }:
{
  flake-file.inputs = {
    noctalia.url = "github:noctalia-dev/noctalia";
    noctalia.inputs.nixpkgs.follows = "nixpkgs";
  };
  den.aspects.noctalia.homeManager = {
    imports = [ inputs.noctalia.homeModules.default ];
    enable = true;
  };
}
