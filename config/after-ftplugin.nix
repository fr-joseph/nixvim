{
  extraFiles = {

    # override default tabstop of 4 in markdown
    "after/ftplugin/markdown.lua".text = ''
      vim.opt_local.expandtab = true
      vim.opt_local.shiftwidth = 2
      vim.opt_local.tabstop = 2
    '';

  };
}
