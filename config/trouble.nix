{
  plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>x";
      action = "+diag/qfix";
    }
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble<cr>";
      options = {
        silent = true;
        desc = "trouble";
      };
    }
    {
      mode = "n";
      key = "<leader>xw";
      action = "<cmd>Trouble diagnostics<cr>";
      options = {
        silent = true;
        desc = "diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>xs";
      action = "<cmd>Trouble symbols<cr>";
      options = {
        silent = true;
        desc = "symbols";
      };
    }
    {
      mode = "n";
      key = "<leader>xq";
      action = "<cmd>Trouble quickfix<cr>";
      options = {
        silent = true;
        desc = "quickfix";
      };
    }
  ]; # end keymaps
}


