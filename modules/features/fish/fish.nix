{ lib, ... }:
{
  den.ful.shell.fish = {
    homeManager = {
      programs.fish = {
        enable = true;
        interactiveShellInit = ''
          set fish_greeting    
        '';
        shellAliases = {
          sudo = "sudo ";
          rebuild = "sudo nixos-rebuild switch";
          ga = "git add";
          gaa = "git add .";
          gc = "git commit -m";
          gp = "git push";
          clone = "git clone";
        };
      };
      programs.starship = {
        enable = true;
        enableFishIntegration = true;

        settings = lib.importTOML ./bracketed-segments.toml;
      }
    };
  };
}
