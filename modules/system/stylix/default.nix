{ inputs, lib, ... }:
{
  flake-file.inputs = {
    stylix.url = "github:nix-community/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  den.aspects.stylix = {
    nixos = { pkgs, host, ... }: {
      imports = [ inputs.stylix.nixosModules.stylix ];
      stylix = {
        enable = true;
        base16Scheme = host.theme.scheme;
        polarity = host.theme.polarity;
        image = host.theme.wallpaper;

        cursor = {
          package = pkgs.whitesur-cursors;
          name = "WhiteSur-cursors";
          size = 24;
        };

        fonts = {
          serif = {
            package = pkgs.nerd-fonts.jetbrains;
            name = "Jetbrains nerd fonts";
          };
          sansSerif = {
            package = pkgs.nerd-fonts.jetbrains;
            name = "Jetbrains nerd fonts";
          };
          monospace = {
            package = pkgs.nerd-fonts.jetbrains-mono;
            name = "Jetbrains Nerd Fonts Mono";
          };
          emoji = {
            package = pkgs.noto-fonts-color-emoji;
            name = "Noto color emoji";
          };

          sizes.popups = 12;
          sizes.desktop = 12;
        };
      };
    };
  };
}
