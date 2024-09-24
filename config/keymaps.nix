{
  # keymaps.*.mode
  # See :h map-modes to learn more.
  # one of "c", "i", "!", "l", "n", "", "o", "s", "t", "v", "x" 
  # or list of the above
  keymaps = [
    ##############################################
    ### navigation
    ##############################################
    {
      options.desc = "oil";
      action = "<cmd>Oil<CR>";
      key = "<leader>o";
      mode = "n";
      options.silent = true;
    }
    ##############################################
    ### telescope
    ##############################################
    {
      options.desc = "fuzzy";
      action = "<cmd>Telescope current_buffer_fuzzy_find<CR>";
      key = "<leader><leader>";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "grep";
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>fg";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "recentf";
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>fr";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "resume";
      action = "<cmd>Telescope resume<CR>";
      key = "<leader>fR";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "files";
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>ff";
      mode = "n";
      options.silent = true;
    }
    ##############################################
    ### UI toggle
    ##############################################
    {
      options.desc = "colorizer togg";
      action = "<cmd>ColorizerToggle<CR>";
      key = "<leader>uc";
      mode = "n";
      options.silent = true;
    }
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
    ### git
    ##############################################
    {
      options.desc = "neogit";
      action = "<cmd>Neogit<CR>";
      key = "<leader>gg";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "status";
      action = "<cmd>Telescope git_status<CR>";
      key = "<leader>gs";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "files";
      action = "<cmd>Telescope git_files<CR>";
      key = "<leader>gf";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "buf commits";
      action = "<cmd>Telescope git_bcommits<CR>";
      key = "<leader>gb";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "commits";
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>gc";
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
    {
      options.desc = "buffers";
      action = "<cmd>lua require('telescope.builtin').buffers({ sort_lastused = true, previewer = false })<cr>";
      key = "<leader>j";
      mode = "n";
      options.silent = true;
    }
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
