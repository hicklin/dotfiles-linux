{ config, pkgs, ... }:

{
  # Explicitly use nouveau
  services.xserver.videoDrivers = [ "nouveau" ];
  
  # Ensure hardware acceleration is enabled
  hardware.graphics = {
    enable = true;
    # enable32Bit = true;
  };

  environment.systemPackages = with pkgs; [
    glxinfo
    mesa-demos
    iotop
  ];
}
