{
  users = {
    users = {
      maesh = {
        isNormalUser = true;
        extraGroups = [
          "wheel"
          "docker"
        ];
        hashedPassword = "$6$ATN3ECH9eJMmv/WX$YLDhZ.NsbuwhwO7J5mZWPqdQhd0AdTCAm9q.7syQs82SJFQH0JX/13HnBFv.RYp270H6QG32MAjGrxcslBg4x0";
        openssh = {
          authorizedKeys = {
            keys = [
              "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGmNks5Ax9f6Fnew4Tb+VtUMznu12d7yE/6NH9uu/2kU maesh@DESKTOP-CQUA2KG"
            ];
          };
        };
      };
    };
  };
}
