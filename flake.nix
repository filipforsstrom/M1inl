{
  description = "C++ Development";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      # This is the list of architectures that work with this project
      systems = [
        "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"
      ];
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            gcc
            fish
          ];
          shellHook = ''
            exec fish
          '';
        };
      };
    };
}