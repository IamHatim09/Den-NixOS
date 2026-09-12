{
  den.default.nixos.boot = { pkgs, config, ... }: {
    loader = {
      efi.canTouchEfiVariables = true;
      timeout = 0;
      systemd-boot.enable = false;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        theme = pkgs.catppuccin-grub;
      };
    };
    consoleLogLevel = 4;
    kernelParams = [
      "quiet"
      "spash"
    ];
    kernelPackages = pkgs.linuxPackages_zen;
  };
}

