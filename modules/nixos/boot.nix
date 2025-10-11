{ pkgs, ... }: {
    boot = {
        loader.grub = {
	    enable = true;
	    device = "nodev";
	    efiSupport = true;
	};
	kernelPackages = pkgs.linuxPackages_latest;
  };
}
