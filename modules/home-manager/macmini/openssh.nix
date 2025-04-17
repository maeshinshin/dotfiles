{
  programs = {
    ssh = {
      enable = true;
      addKeysToAgent = "confirm";
      compression = true;
      controlMaster = "yes";
      extraConfig = ''
        Include conf.d/*.conf
        Include conf.d/*/*.conf
        Include ./*.conf
      '';
    };
  };
}
