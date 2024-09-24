{
  plugins.neogit = {
    enable = true;
  };

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>g";
      mode = "n";
      group = "+git";
    }
  ];

  keymaps = [
    {
      options.desc = "neogit";
      action = "<cmd>Neogit<CR>";
      key = "<leader>gg";
      mode = "n";
      options.silent = true;
    }
  ];

}
