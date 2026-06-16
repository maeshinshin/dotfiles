{
  imports = [
    ../filemanager
    ../warp
    ../cli
    ../nix-ld
  ];
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 3d";
    };
  };
}
