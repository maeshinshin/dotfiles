{
  imports = [
    ../bluetooth
    ../boot
    ../console
    ../direnv/bash
    ../filemanager
    ../gnupg
    ../i18n
    ../networking
    ../nix
    ../packages
    ../pipewire
    ../timezone
    ../users
    ../warp
  ];
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 3d";
    };
  };
}
