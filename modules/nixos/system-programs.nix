{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        curl
	neovim
	git
	zsh
    gcc
    nodejs
    python3
    pnpm
    bun
    ];	
}
