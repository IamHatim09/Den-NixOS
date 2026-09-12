{
  den.default.nixos.boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      timeout = 0;
      systemd-boot.enable = false;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
    };
    consoleLogLevel = 4;
    kernelParams = [
      "quiet"
      "spash"
    ];
  };
}

