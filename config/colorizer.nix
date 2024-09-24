{
  plugins.nvim-colorizer.enable = true;

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>u";
      mode = "n";
      group = "+ui";
    }
  ];

  keymaps = [
    {
      options.desc = "colorizer togg";
      action = "<cmd>ColorizerToggle<CR>";
      key = "<leader>uc";
      mode = "n";
      options.silent = true;
    }
  ];
}
