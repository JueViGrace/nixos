{pkgs, ...}: {
  programs = {
    zsh = {
      enable = true;
      ohMyZsh = {
        enable = true;
        theme = "robbyrussell";
        plugins = ["git" "tmux" "z" "fzf"];
      };
    };
    neovim.enable = true;
    zoxide.enable = true;
  };
  environment.systemPackages = with pkgs; [
    pwvucontrol
    fzf
    tmux
    zip
    cargo
    unzip
    unrar
    curl
    git
    lua
    luarocks
    gcc
    ghostty
    nodejs
    python3
    pnpm
    bun
    go
  ];
}
