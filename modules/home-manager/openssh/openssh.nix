{
  programs = {
    ssh = {
      enable = true;
      addKeysToAgent = "confirm";
      compression = true;
      controlMaster = "yes";
    };
  };
}
