{
  description = "A simple NixOS flake";

  inputs = {
    # Nixpkgs / NixOS version to use.
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

    # Helix editor, the flake.nix is presented in the github master branch
    #helix.url = "github:helix-editor/helix/master";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
     # specialArgs = { inherit inputs; };
      modules = [
	# import the configuration.nix
	./configuration.nix
      ];
    };
  };
}
