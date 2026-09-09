{
  den.default.nixos.boot = { pkgs, config, ... }: {
    loader = {
      efi.canTouchEfiVariables = true;
      timeout = 0;
      systemd-boot.consoleMode = "max";
    };
    consoleLogLevel = 4;
    kernelParams = [
      "quiet"
      "spash"
    ];
    kernelPackages = pkgs.linuxPackages_zen;
  };
}

