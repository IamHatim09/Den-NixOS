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
      rigrep
      tldr
      tree
      unzip
      watchexec
      wget
    ];
  };
}
