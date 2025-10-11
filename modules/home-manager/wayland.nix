{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      variables = ["--all"];
    };
    # TODO: add settings file?
  };
}
