{
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "helix";
      delay = 200;
      icons = {
        breadcrumb = "»";
        group = "+";
        separator = ""; # ➜
      };
      spec = [
        {
          __unkeyed-1 = "<leader>f";
          mode = "n";
          group = "+find";
          icon = "󱡁";
        }
        {
          __unkeyed-1 = "<leader>g";
          mode = "n";
          group = "+git";
        }
        {
          __unkeyed-1 = "<leader>u";
          mode = "n";
          group = "+ui";
        }
        {
          __unkeyed-1 = "<leader>x";
          mode = "n";
          group = "+diag";
        }
      ];
    };
  };
}
