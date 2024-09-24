{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        ### nix ###----------------------------------------
        # https://github.com/oxalica/nil
        nil-ls = {
          enable = true;
        };
        ### bash ###---------------------------------------
        bashls = {
          enable = true;
        };
        ### C/C++ ###--------------------------------------
        clangd = {
          enable = true;
        };
        ### CSS ###----------------------------------------
        cssls = {
          enable = true;
        };
        ### JS ###-----------------------------------------
        eslint = {
          enable = true;
        };
        ### HTML ###---------------------------------------
        html = {
          enable = true;
        };
        ### java ###---------------------------------------
        jdt-language-server = {
          enable = true;
        };
        # java-language-server = {
        #   enable = true;
        # };
        ### json ###---------------------------------------
        jsonls = {
          enable = true;
        };
        ### lua ###----------------------------------------
        lua-ls = {
          enable = true;
          extraOptions.settings.Lua = {
            completion.callSnippet = "Replace";
            telemetry.enabled = false;
            hint.enable = true;
          };
        };
        ### markdown ###-----------------------------------
        marksman = {
          enable = true;
        };
        ### nushell ###------------------------------------
        # nushell = {
        #   enable = true;
        # };
        ### perl ###---------------------------------------
        perlpls = {
          enable = true;
        };
        ### SQL ###----------------------------------------
        sqls = {
          enable = true;
        };
        ### latex ###--------------------------------------
        texlab = {
          enable = true;
        };
        ### yaml ###---------------------------------------
        yamlls = {
          enable = true;
        };
      }; # end servers ------------------------------------

      # keymaps = {
      #   diagnostic = {
      #     "<leader>xo" = {
      #       action = "open_float";
      #       desc = "open";
      #     };
      #     "<leader>xn" = {
      #       action = "goto_next";
      #       desc = "next";
      #     };
      #     "<leader>xp" = {
      #       action = "goto_prev";
      #       desc = "prev";
      #     };
      #   }; # end diagnostic
      #   lspBuf = {
      #     K = {
      #       action = "hover";
      #       desc = "hover";
      #     };
      #     gD = {
      #       action = "references";
      #       desc = "refs";
      #     };
      #     gd = {
      #       action = "definition";
      #       desc = "def";
      #     };
      #     gi = {
      #       action = "implementation";
      #       desc = "impl";
      #     };
      #     gt = {
      #       action = "type_definition";
      #       desc = "type def";
      #     };
      #     "<C-k>" = {
      #       action = "signature_help";
      #       desc = "sig help";
      #     };
      #   }; # end lspBuf
      # }; # end keymaps

    }; # end lsp
  }; # end plugins

  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}
