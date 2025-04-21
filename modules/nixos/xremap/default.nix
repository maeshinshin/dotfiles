{ inputs, pkgs, ... }: {
  imports = [ inputs.xremap.nixosModules.default ];
  services.xremap = {
    userName = "maesh";
    serviceMode = "system";
    config = {
      modmap = [{
        name = "CapsLock is dead";
        remap = { CapsLock = "Ctrl_L"; };
      }];
    };
  };
}
