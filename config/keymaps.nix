{

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>u";
      mode = "n";
      group = "+ui";
      icon = "󰍹";
    }
  ];

  # keymaps.*.mode
  # See :h map-modes to learn more.
  # one of "c", "i", "!", "l", "n", "", "o", "s", "t", "v", "x" 
  # or list of the above
  keymaps = [
    ##############################################
    ### beginning of line
    ##############################################
    {
      options.desc = "beginning of line";
      action = "<Home>";
      key = "<C-a>";
      mode = "!";
      options.silent = true;
    }
    ##############################################
    ### UI toggle
    ##############################################
    {
      options.desc = "spell togg";
      action = "<cmd>set spell!<CR>";
      key = "<leader>us";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "HLS togg";
      action = "<cmd>set hls!<CR>";
      key = "<leader>uh";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "wrap togg";
      action = "<cmd>set wrap!<CR>";
      key = "<leader>uw";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "list togg";
      action = "<cmd>set list!<CR>";
      key = "<leader>ul";
      mode = "n";
      options.silent = true;
    }
    ##############################################
    ### buffers
    ##############################################
    # {
    #   options.desc = "delete";
    #   action = "<cmd><cr>";
    #   key = "<leader>q";
    #   mode = "n";
    #   options.silent = true;
    # }
    ##############################################
    ### misc helpers
    ##############################################
    {
      options.desc = "<esc> NOP";
      action = "<nop>";
      key = "<esc>";
      mode = "i";
      options.silent = true;
    }
    {
      options.desc = "exit insert";
      action = "<esc>l";
      key = "jk";
      mode = "i";
      options.silent = true;
    }
    {
      options.desc = "exit insert";
      action = "<esc>l";
      key = "kj";
      mode = "i";
      options.silent = true;
    }
    {
      options.desc = "exit insert";
      action = ''<c-\><c-n>'';
      key = "kj";
      mode = "t";
      options.silent = true;
    }
    {
      options.desc = "exit insert";
      action = ''<c-\><c-n>'';
      key = "jk";
      mode = "t";
      options.silent = true;
    }
    {
      options.desc = "exit insert";
      action = "<c-u><esc>";
      key = "<esc>";
      mode = "c";
      options.silent = true;
    }
    {
      options.desc = "horizontal scroll left";
      action = "40zh";
      key = "<c-h>";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "horizontal scroll right";
      action = "40zl";
      key = "<c-l>";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "join lines, keep cursor left";
      action = "mzJ`z";
      key = "J";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "nav word wrap up";
      action = "v:count == 0 ? 'gk' : 'k'";
      key = "k";
      mode = "n";
      options.silent = true;
      options.expr = true;
    }
    {
      options.desc = "nav word wrap down";
      action = "v:count == 0 ? 'gj' : 'j'";
      key = "j";
      mode = "n";
      options.silent = true;
      options.expr = true;
    }
  ];
}
