{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      highlight.enable = true;
    };
    folding = true;
    nixvimInjections = true;

    # use allGrammers from nixvim, don't try to build them with gcc/node
    # rely on default value of `grammarPackages` being `passthru.allGrammars`
    gccPackage = null;
    nodejsPackage = null;
    nixGrammars = true;

  };
}


