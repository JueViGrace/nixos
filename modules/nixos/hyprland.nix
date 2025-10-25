{...}: {
  programs.hyprland = {
    enable = true;
  };
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = pkgs.hyprland;
    systemd = {
      enable = true;
      variables = ["--all"];
    };
  };
}
