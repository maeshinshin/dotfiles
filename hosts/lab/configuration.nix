{ ... }: {
  nixpkgs.config.allowUnfree = true;
  networking.hostName = "lab";
  system.stateVersion = "24.11"; # Did you read the comment?
}
