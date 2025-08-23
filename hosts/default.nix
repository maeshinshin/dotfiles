{ inputs, ... }:

{
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
        ../modules/nixos/openssh
        ../modules/nixos/systemd/sleep/nosleep
        ../modules/nixos/shell/bash
        ../modules/nixos/terminal/foot/bash
        ../modules/nixos/terminal/ghostty
        ../modules/nixos/terminal/kitty
        ../modules/nixos/xremap
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.maesh = import ./home/home.nix;
        }
      ];
      specialArgs = { inherit inputs; };
    };
    jump = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./jump/configuration.nix
        ./jump/hardware-configuration.nix
        ../modules/hardware/cpu-intel
        ../modules/hardware/storage-ssd
        ../modules/nixos/cli
        ../modules/nixos/docker/withoutNvidia
        ../modules/nixos/openssh
        ../modules/nixos/systemd/sleep/nosleep
        ../modules/nixos/shell/bash
        ../modules/nixos/xremap
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.maesh = import ./jump/home.nix;
        }
      ];
      specialArgs = { inherit inputs; };
    };
    v15 = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./v15/configuration.nix
        ./v15/hardware-configuration.nix
        ../modules/hardware/cpu-amd
        ../modules/hardware/storage-ssd
        ../modules/nixos/common
        ../modules/nixos/desktop/gnome.nix
        ../modules/nixos/docker/withoutNvidia
        ../modules/nixos/shell/bash
        ../modules/nixos/terminal/foot/bash
        ../modules/nixos/terminal/ghostty
        ../modules/nixos/terminal/kitty
        ../modules/nixos/xremap
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.maesh = import ./v15/home.nix;
        }
      ];
      specialArgs = { inherit inputs; };
    };
    wsl = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./wsl/configuration.nix
        ../modules/hardware/cpu-intel
        ../modules/hardware/storage-ssd
        ../modules/nixos/wsl
        ../modules/nixos/docker/withoutNvidia
        ../modules/nixos/shell/bash
        inputs.nixos-wsl.nixosModules.default
        {
          wsl.enable = true;
          wsl.defaultUser = "maesh";
          system.stateVersion = "24.11";
        }
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.maesh = import ./wsl/home.nix;
        }
      ];
      specialArgs = { inherit inputs; };
    };
    lab = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./lab/configuration.nix
        ./lab/hardware-configuration.nix
        ../modules/hardware/cpu-intel
        ../modules/hardware/nvidia
        ../modules/hardware/storage-ssd
        ../modules/nixos/common
        ../modules/nixos/desktop/gnome.nix
        ../modules/nixos/docker/withNvidia
        ../modules/nixos/rdp/xrdp
        ../modules/nixos/openssh
        ../modules/nixos/systemd/sleep/nosleep
        ../modules/nixos/shell/bash
        ../modules/nixos/terminal/foot/bash
        ../modules/nixos/terminal/ghostty
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.maesh = import ./home/home.nix;
        }
      ];
      specialArgs = { inherit inputs; };
    };
  };
  darwin = {
    macmini = inputs.nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        ./macmini/configuration.nix
        ../modules/nixos/macmini
        inputs.home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.maesh = import ./macmini/home.nix;
        }
      ];
    };
  };
}
