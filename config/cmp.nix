{ pkgs, ... }:
{

  plugins.luasnip = {
    enable = true;
    settings = {
      enable_autosnippets = false;
    };
    fromVscode = [
      {
        lazyLoad = true;
        paths = "${pkgs.vimPlugins.friendly-snippets}";
      }
    ];
  };

  plugins = {
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-cmdline.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = false;
      settings = {
        experimental = {
          ghost_text = false;
        };
      };
      settings = {
        mapping = {
          __raw = ''
            cmp.mapping.preset.insert({
              ['<C-n>'] = cmp.mapping.select_next_item(),
              ['<C-p>'] = cmp.mapping.select_prev_item(),
              ['<C-e>'] = cmp.mapping.abort(),
              ['<C-b>'] = cmp.mapping.scroll_docs(-4),
              ['<C-f>'] = cmp.mapping.scroll_docs(4),
              ['<C-Space>'] = cmp.mapping.complete(),
              -- ['<S-CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
              -- ['<C-y>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),

              ['<C-Space>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                  if luasnip.expandable() then
                    luasnip.expand()
                  else
                    cmp.confirm({
                      behavior = cmp.ConfirmBehavior.Insert,
                      select = true,
                    })
                  end
                else
                  fallback()
                end
              end),

              ['<Down>'] = {
                c = function()
                  local fn = function()
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Down>', true, false, true), 'n', true)
                  end
                  if cmp.visible() then
                    fn = cmp.mapping.select_next_item(select_opts)
                  end
                  fn()
                end,
              },

              ['<Up>'] = {
                c = function()
                  local fn = function()
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Up>', true, false, true), 'n', true)
                  end
                  if cmp.visible() then
                    fn = cmp.mapping.select_prev_item(select_opts)
                  end
                  fn()
                end,
              },


              -- ["<Tab>"] = cmp.mapping(function(fallback)
              --   if cmp.visible() then
              --     cmp.select_next_item()
              --   elseif luasnip.locally_jumpable(1) then
              --     luasnip.jump(1)
              --   else
              --     fallback()
              --   end
              -- end, { "i", "s" }),

              -- ["<S-Tab>"] = cmp.mapping(function(fallback)
              --   if cmp.visible() then
              --     cmp.select_prev_item()
              --   elseif luasnip.locally_jumpable(-1) then
              --     luasnip.jump(-1)
              --   else
              --     fallback()
              --   end
              -- end, { "i", "s" }),

              ["<Tab>"] = cmp.mapping(function(fallback)
                if luasnip.locally_jumpable(1) then
                  luasnip.jump(1)
                else
                  fallback()
                end
              end, { "i", "s" }),

              ["<S-Tab>"] = cmp.mapping(function(fallback)
                if luasnip.locally_jumpable(-1) then
                  luasnip.jump(-1)
                else
                  fallback()
                end
              end, { "i", "s" }),

            })
          '';
        };
        snippet = {
          expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        };
        sources = {
          __raw = ''
            cmp.config.sources({
              {name = 'nvim_lsp'},
              {name = 'path'},
              {name = 'luasnip'},
              {name = 'cmdline'},
            }, {
                {name = 'buffer'},
              })
          '';
        };
        performance = {
          debounce = 60;
          fetching_timeout = 200;
          max_view_entries = 30;
        };
        preselect = "cmp.PreselectMode.None";
        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
          };
          documentation = {
            border = "rounded";
          };
        };
        formatting = {
          fields = [
            "kind"
            "abbr"
            "menu"
          ];
          expandable_indicator = true;
        };
      };
    };
  };

  plugins.lspkind = {
    enable = true;
    extraOptions = {
      maxwidth = 50;
      ellipsis_char = "...";
    };
  };

  extraConfigLua = ''
      luasnip = require("luasnip")
      kind_icons = {
        Text = "󰊄",
        Method = "",
        Function = "󰡱",
        Constructor = "",
        Field = "",
        Variable = "󱀍",
        Class = "",
        Interface = "",
        Module = "󰕳",
        Property = "",
        Unit = "",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "",
        Event = "",
        Operator = "",
        TypeParameter = "",
      }

    local cmp = require('cmp')
    local cmp_api = require('cmp.utils.api')
    local select_opts = { behavior = cmp.SelectBehavior.Insert }

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({'/', "?" }, {
        sources = {
        { name = 'buffer' }
        }
        })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
            { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
            }, {
            { name = 'buffer' },
            })
        })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
            { name = 'path' }
            }, {
            { name = 'cmdline' }
            }),
        })  

    -- jump to documentation window while in insert mode
    -- (can use `KK` for `Lspsaga hover_doc` in normal mode, `q` to close)
    -- https://github.com/hrsh7th/nvim-cmp/discussions/1517#discussioncomment-5607673
    vim.keymap.set("i", "<C-S-K>", function()
      vim.cmd.stopinsert()
      vim.lsp.buf.signature_help()
      vim.defer_fn(function() vim.cmd.wincmd("w") end, 100)
      vim.keymap.set("n", "q", ":close<CR>", { buffer = true })
    end)
  '';
}
