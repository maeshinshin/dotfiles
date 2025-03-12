{inputs, ...}: {
  nixos = {
    home = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./home/configuration.nix
        ./home/hardware-configuration.nix
        ../modules/hardware/cpu-intel
        ../modules/hardware/nvidia
        ../modules/hardware/storage-ssd
        ../modules/nixos/common
        ../modules/nixos/desktop/gnome.nix
        ../modules/nixos/docker/withNvidia
        ../modules/nixos/rdp/xrdp
        ../modules/nixos/systemd/sleep/nosleep
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.maesh = import ./home/home.nix;
        }
      ];
      specialArgs = {
        inherit inputs;
      };
    };
  };
}
