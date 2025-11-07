{ pkgs, ... }: {
    boot = {
        loader = {
	efi = {
	canTouchEfiVariables = true;
		efiSysMountPoint = "/boot";
	    };
	grub = {
	    enable = true;
	    device = "nodev";
	    efiSupport = true;
	    useOSProber = true;
	};
	};
	initrd.luks.devices."luks-94b16b3b-2518-4bd2-8d5b-aa6fff288927".device = "/dev/disk/by-uuid/94b16b3b-2518-4bd2-8d5b-aa6fff288927";
	kernelPackages = pkgs.linuxPackages_latest;
	kernelParams = [ "quiet" ];
  };
}
