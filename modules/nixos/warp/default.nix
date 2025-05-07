{pkgs,...}:{
  environment.systemPackages = [
    pkgs.cloudflare-warp
  ];
}
