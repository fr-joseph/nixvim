{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = "base16";
        alwaysDivideMiddle = true;
        globalstatus = true;
        extensions = [ "quickfix" "oil" "trouble" ];
        section_separators = "█";
        component_separators = "|";
        # ignoreFocus = ["neo-tree"];
      };
      sections = {
        # lualine_a = [ "vim.fn.getcwd()" ];
        # lualine_a = [ "string.gsub(vim.fn.getcwd(), '^/home/fj', '~')" ];
        lualine_a.__raw = "{ { 'filename', file_status = true, path = 2 } }";
        lualine_b = [ "filetype" ];
        lualine_c = [ "diff" "diagnostics" ];
        lualine_x = [ "encoding" "fileformat" ];
        lualine_y = [ "progress" "location" ];
        lualine_z.__raw = "{ { 'branch', icon = '', } }";
      };
    };
  };
}
