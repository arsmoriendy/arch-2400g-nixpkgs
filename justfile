install-or-upgrade:
  nix profile add .
  nix profile upgrade arch-2400g-nixpkgs

clean:
  nix-collect-garbage -d
