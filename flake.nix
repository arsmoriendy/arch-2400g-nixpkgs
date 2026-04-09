{
  description = "Collection of packages for Arch 2400g";

  inputs = {
    nixpkgs-stable.url = "github:nixos/nixpkgs?ref=nixos-25.11";
  };

  outputs =
    { self, nixpkgs-stable }:
    {
      packages."x86_64-linux".default =
        let
          pkgs = import nixpkgs-stable {
            system = "x86_64-linux";
            config.allowUnfree = true;
          };
        in
        pkgs.buildEnv {
          name = "arch-2400g-nixpkgs";
          paths = with pkgs; [
            just
            spotify
            vicinae
            tmux
            nushell
            carapace
            sops
          ];
        };
    };
}
