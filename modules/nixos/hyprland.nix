{ ... }: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  security.polkit.enable = true;

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
    };
  };
}
