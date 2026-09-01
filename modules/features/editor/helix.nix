{
  den.ful.editor.helix = {
    homeManager = { lib, pkgs, ... }: {
      programs.helix = {
        enable = true;
        defaultEditor = true;
        extraPackages = with pkgs; [
          clang
          clang-tools
        ];
        settings = {
          editor = {
            line-number = "relative";
            cursor-shape = {
              insert = "bar";
              normal = "block";
              select = "underline";
            };
            inline-diagnostics = {
              cursor-line = "hint";
            };
          };
          theme = lib.mkDefault "catppuccin_mocha";
        };
        languages = {
          language-server.clangd.command = "${pkgs.clang-tools}/bin/clangd";

          language = [
            {
              name = "c";
              language-servers = [ "clangd" ];
              formatter = {
                command = "${pkgs.clang-tools}bin/clang-format";
                args = [
                  "--dry-run"
                  "--Werror"
                  "--fallback-style"
                  "none"
                  "%"
                ];
              };
            }
            {
              name = "cpp";
              language-servers = [ "clangd" ];
              formatter = {
                command = "${pkgs.clang-tools}bin/clang-format";
                args = [
                  "--dry-run"
                  "--Werror"
                  "--fallback-style"
                  "none"
                  "%"
                ];
              };
            }
          ];
        };
      };
    };
  };
}
