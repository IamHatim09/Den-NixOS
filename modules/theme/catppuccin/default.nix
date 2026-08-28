{ __findfile, ... }:
{
  den.ful.theme.catppuccin = {
    includes = [
      <stylix>
      ({ host, ... }: { host.theme.scheme = .scheme.yaml; })
    ];
    host.class.theme = {
      scheme = ./scheme.yaml;
      polarity = "dark";
      wallpaper = ./NixOS-catppuccin.png;
    };
  };
}
