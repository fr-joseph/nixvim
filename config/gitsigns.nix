{
  plugins.gitsigns = {
    enable = true;
  };

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>h";
      mode = "n";
      group = "+hunk";
      icon = "󰊢";
    }
  ];

  keymaps = [
    {
      options.desc = "next hunk";
      action = "<cmd>lua gitsigns.nav_hunk('next')<CR>";
      key = "<leader>hn";
      mode = "n";
      options.silent = true;
    }
    {
      options.desc = "prev hunk";
      action = "<cmd>lua gitsigns.nav_hunk('prev')<CR>";
      key = "<leader>hp";
      mode = "n";
      options.silent = true;
    }
  ];
}

# -- Navigation
#     map('n', ']c', function()
#       if vim.wo.diff then
#         vim.cmd.normal({']c', bang = true})
#       else
#         gitsigns.nav_hunk('next')
#       end
#     end)
#
#     map('n', '[c', function()
#       if vim.wo.diff then
#         vim.cmd.normal({'[c', bang = true})
#       else
#         gitsigns.nav_hunk('prev')
#       end
#     end)
#
#     -- Actions
#     map('n', '<leader>hs', gitsigns.stage_hunk)
#     map('n', '<leader>hr', gitsigns.reset_hunk)
#     map('n', '<leader>hp', gitsigns.preview_hunk)
#     map('n', '<leader>hd', gitsigns.diffthis)

#     map('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
#     map('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)

#     map('n', '<leader>hS', gitsigns.stage_buffer)
#     map('n', '<leader>hu', gitsigns.undo_stage_hunk)
#     map('n', '<leader>hR', gitsigns.reset_buffer)
#     map('n', '<leader>hb', function() gitsigns.blame_line{full=true} end)
#     map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
#     map('n', '<leader>hD', function() gitsigns.diffthis('~') end)
#     map('n', '<leader>td', gitsigns.toggle_deleted)
#
#     -- Text object
#     map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
