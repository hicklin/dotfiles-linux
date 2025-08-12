{ config, pkgs, ... }:

{
  hardware.firmware = with pkgs; [ linux-firmware ];

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

  # Setting for K600 with nouveau
  # Minimize crashes - disable acceleration features
  boot.kernelParams = [
    "nouveau.modeset=1"
    "nouveau.runpm=0"
    "nouveau.noaccel=0"  # Keep basic acceleration
    "nouveau.vram_pushbuf=0"
  ];

  # Disable problematic video acceleration
  environment.variables = {
    LIBVA_DRIVER_NAME = "";  # Disable VAAPI
    VDPAU_DRIVER = "";       # Disable VDPAU
  };
}
