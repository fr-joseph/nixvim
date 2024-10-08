{ my, ... }:
{

  plugins.lspsaga = {
    enable = true;
    beacon = {
      enable = true;
    };
    ui = {
      border = "rounded"; # One of none, single, double, rounded, solid, shadow
      codeAction = ""; # any symbol
    };
    hover = {
      openCmd = "!${my.browser}"; # Choose your browser
      openLink = "gx";
    };
    diagnostic = {
      borderFollow = true;
      diagnosticOnlyCurrent = false;
      showCodeAction = true;
    };
    symbolInWinbar = {
      enable = true; # Breadcrumbs
    };
    codeAction = {
      extendGitSigns = false;
      showServerName = true;
      onlyInCursor = true;
      numShortcut = true;
      keys = {
        exec = "<CR>";
        quit = [
          "<Esc>"
          "q"
        ];
      };
    };
    lightbulb = {
      enable = true;
      sign = true;
      virtualText = false;
    };
    implement = {
      enable = false;
    };
    rename = {
      autoSave = false;
      keys = {
        exec = "<CR>";
        quit = [
          "<C-k>"
          "<Esc>"
        ];
        select = "x";
      };
    };
    outline = {
      autoClose = true;
      autoPreview = true;
      closeAfterJump = true;
      layout = "normal"; # normal or float
      winPosition = "right"; # left or right
      keys = {
        jump = "e";
        quit = "q";
        toggleOrJump = "o";
      };
    };
    scrollPreview = {
      scrollDown = "<C-f>";
      scrollUp = "<C-b>";
    };
  }; # end plugins.lspsaga

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>c";
      mode = "n";
      group = "+lsp";
      icon = "󰖷";
    }
  ];

  keymaps = [
    {
      mode = "n";
      key = "gd";
      action = "<cmd>Lspsaga finder def<CR>";
      options = {
        desc = "goto def";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>Lspsaga finder ref<CR>";
      options = {
        desc = "goto refs";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "gI";
      action = "<cmd>Lspsaga finder imp<CR>";
      options = {
        desc = "goto impl";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "gT";
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      options = {
        desc = "peek type def";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "K";
      action = "<cmd>Lspsaga hover_doc<CR>";
      options = {
        desc = "hover";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>co";
      action = "<cmd>Lspsaga outline<CR>";
      options = {
        desc = "outline";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>cr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        desc = "rename";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>Lspsaga code_action<CR>";
      options = {
        desc = "code action";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
      options = {
        desc = "line diagnostics";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "[d";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options = {
        desc = "next diagnostic";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "]d";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      options = {
        desc = "previous diagnostic";
        silent = true;
      };
    }
  ]; # end keymaps

}
