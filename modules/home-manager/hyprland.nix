{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = pkgs.hyprland;
    systemd = {
      enable = true;
    };

    # plugins = [];
  };
}
