{ pkgs, ... }:
{
  den.default.nixos = { pkgs, ... }: {
    environment.systemPackages = with pkgs;[
      bat
      duf
      dust
      fd
      ffmpeg
      file
      git
      helix
      jq
      just
      kitty.terminfo
      ripgrep
      tldr
      tree
      unzip
      watchexec
      wget
    ];
  };
}
