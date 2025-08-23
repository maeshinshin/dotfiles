{
  imports = [
    ../bluetooth
    ../boot
    ../console
    ../direnv/bash
    ../gnupg
    ../i18n
    ../networking
    ../nix
    ../packages
    ../pipewire
    ../tailscale
    ../timezone
    ../users
  ];
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 3d";
    };
  };
}
