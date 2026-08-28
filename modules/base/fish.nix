{
  den.default.homeManager = { pkgs, ... }: {
    home.packages = with pkgs; [
      
    ];

    programs.fish = {
      interactiveShellInit = ''
          set fish_greeting
      '';
      shellAliases = {
        c = "clear";
      };
    };
  };
}
