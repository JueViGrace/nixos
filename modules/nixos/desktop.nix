{ ... }: {
services = {
    xserver = {
      enable = true;
      displayManager = {
	  gdm.enable = true;
	  #      lightdm = {
	  #        enable = true;
	  #        greeters.slick = {
	  #   enable = true;
	  # };
	  #      };
      };
      desktopManager = {
	gnome.enable = true; 
      };
    };
    
    pulseaudio.enable = false;
    pipewire = {
	enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
	pulse.enable = true;
	jack.enable = true;
    };
  };

  security.rtkit.enable = true;
}
