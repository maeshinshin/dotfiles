{ ... }: {
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = 6;
}
