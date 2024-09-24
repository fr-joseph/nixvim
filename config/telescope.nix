{
  plugins.telescope = {

    enable = true;

    extensions = {

      fzy-native = {
        enable = true;
        settings = {
          override_file_sorter = true;
          override_generic_sorter = true;
        };
      };

      undo.enable = true;

      manix.enable = true;

    };
  };

  plugins.which-key.settings.spec = [
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
  ];

  keymaps = [
    ##############################################
    ### <leader><leader>
    ##############################################
    {
      options.desc = "fuzzy";
      action = "<cmd>Telescope current_buffer_fuzzy_find<CR>";
      key = "<leader><leader>";
      mode = "n";
      options.silent = true;
    }
    ##############################################
    ### <leader>f
    ##############################################
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
    {
      options.desc = "manix";
      action = "<cmd>Telescope manix<CR>";
      key = "<leader>fm";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "undo";
      action = "<cmd>Telescope undo<CR>";
      key = "<leader>fu";
      mode = "n";
      options.silent = true;
    }
    ##############################################
    ### <leader>g
    ##############################################
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
    ### <leader>j
    ##############################################
    {
      options.desc = "buffers";
      action = "<cmd>lua require('telescope.builtin').buffers({ sort_lastused = true, previewer = false })<cr>";
      key = "<leader>j";
      mode = "n";
      options.silent = true;
    }
  ];
}
