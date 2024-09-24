{
  description = "fj nixvim flake";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixvim,
      flake-utils,
      ...
    }:
    let
      config = import ./config;
    in
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        nixvimLib = nixvim.lib.${system};
        pkgs = import nixpkgs { inherit system; };
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = config;
          extraSpecialArgs = {
            inherit self;
            my = {
              username = "fj";
              colorscheme.base16 = "gruvbox-dark-pale";
              # colorscheme.base16 = "decaf";
              displayServer = "wayland"; # 'x' or 'wayland'
            };
          };
        };
      in
      {
        checks = {
          # `nix flake check .`
          default = nixvimLib.check.mkTestDerivationFromNvim {
            inherit nvim;
            name = "fj nixvim flake";
          };
        };

        packages = {
          # `nix run .`
          default = nvim;
        };
      }
    );
}
