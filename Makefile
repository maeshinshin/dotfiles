home:
	echo "sudo nixos-rebuild switch --flake .#home" | bash

v15:
	echo "sudo nixos-rebuild switch --flake .#v15" | bash

lab:
	echo "sudo nixos-rebuild switch --flake .#lab" | bash
