{
  den.default.nixos.nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    use-xdg-based-directories = true;
    accept-flake-config = true;
  };
}
