{ ... }: {
services = {
    xserver = {
      enable = true;
      displayManager = {
        lightdm = {
          enable = true;
          greeters.slick = {
	    enable = true;
	  };
        };
      };
      desktopManager = {
	gnome.enable = true; 
      };
    };
    
    pulseaudio.enable = true;
    security.rtkit.enable = true;
    pipewire = {
	enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
	pulse.enable = true;
	jack.enable = true;
    };
  };
}
