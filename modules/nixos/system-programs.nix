{ pkgs, ... }: {
    programs = {
	zsh.enable = true;
	neovim.enable = true;
    };
    environment.systemPackages = with pkgs; [
	zip
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
