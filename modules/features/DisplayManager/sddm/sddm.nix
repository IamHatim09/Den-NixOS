{
  den.aspects.sddm.nixos = {
    services.xserver.enable = true;
    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
    services.displayManager.sddm.theme = "elarun";
  };
}
