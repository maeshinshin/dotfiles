{ ... }: {
  nixpkgs.config.allowUnfree = true;
  networking.hostName = "v15";
  system.stateVersion = "24.11"; # Did you read the comment?
}
