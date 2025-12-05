install-or-upgrade:
  nix profile add .
  nix profile upgrade nix-apps

clean:
  nix-collect-garbage -d
