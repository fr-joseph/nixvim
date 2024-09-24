build:
  nix build .
  rm -f ~/my/bin/nvim
  ln -sf {{justfile_directory()}}/result/bin/nvim ~/my/bin/nvim

check:
  nix flake check .

check-all:
  nix flake check --all-systems .

run:
  nix run .
