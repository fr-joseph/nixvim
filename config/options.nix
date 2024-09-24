{ lib, my, ... }: {

  clipboard.register = "unnamedplus";
  clipboard.providers.wl-copy.enable = lib.mkIf (my.displayServer == "wayland") true;
  clipboard.providers.xclip.enable = lib.mkIf (my.displayServer == "x") true;

  globals = {
    mapleader = " ";
    maplocalleader = ",";
  };

  opts = {

    ignorecase = true;
    smartcase = true;

    hlsearch = false;
    inccommand = "split"; # show incremental search results in split
    incsearch = true;

    # use long-term undo files for backups
    backup = false;
    swapfile = false;
    undodir.__raw = "vim.fs.normalize('~/.vim/undodir')";
    undofile = true;
    undolevels = 10000; # max number of changes that can be undone
    writebackup = false;

    updatetime = 50; # cursorhold delay
    timeoutlen = 300;

    splitright = false;
    splitbelow = false;

    showmatch = true; # when a bracket is inserted; briefly jump to the matching one
    matchtime = 1; # tenths of a second to show matching paren from "showmatch"

    list = false;
    listchars = "eol:↲,tab:|->,space: ,lead:•,trail:•,nbsp:␣,extends:→,precedes:←";
    showbreak = "↳ "; # string to show at start of wrapped lines

    spell = false;
    spelllang = [ "en_us" ];

    encoding = "utf-8";
    fileencoding = "utf-8";

    scrolloff = 5;
    sidescrolloff = 10;
    wrap = false;

    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    autoindent = true; # copy indent from current line when starting a new line
    expandtab = true;
    shiftround = true; # always round indents to multiples of shift width
    shiftwidth = 2;
    softtabstop = 2;

    foldenable = false;
    foldlevel = 99; # start with all folds open
    foldlevelstart = 99; # start with all folds open
    foldcolumn = "0"; # disable fold column
    foldmethod = "expr";
    foldexpr = "nvim_treesitter#foldexpr()";

    # use conform-nvim for gq formatting. ('formatexpr' is set to vim.lsp.formatexpr(), so you can format lines via gq if the language server supports it)
    formatexpr = "v:lua.require'conform'.formatexpr()";

    wildmenu = true;
    wildmode = "longest:full"; # complete longest common match & show all in PUM
    wildoptions = "pum"; # show matches in pop-up-menu

    # TODO: preview vs popup
    completeopt = [ "menu" "menuone" "noinsert" "preview" ]; # always show menu; don"t auto-insert

    conceallevel = 2; # hide concealed text; unless has replacement character
    concealcursor = ""; # but don"t conceal anything in cursorline

    # misc options
    autochdir = false; # can break plugins
    autoread = true; # autoread file changes from disk when possible
    cmdheight = 1;
    confirm = false; # don"t ask for confirmation; rather just fail with an error message
    cursorline = true;
    hidden = true; # hide buffers rather than abandoning them
    laststatus = 3; # global modeline
    lazyredraw = false;
    mouse = "a"; # can use mouse to resize windows
    pumblend = 17; # transparent popup menu
    shortmess = "aItToOCF"; # default "ltToOCF"
    showmode = false; # don"t show e.g. INSERT mode in echo area
    signcolumn = "yes"; # always show sign column
    termguicolors = true; # enable 24-bit RGB color
    virtualedit = "block";
    formatoptions = "cjlnqr";
    isfname = "@-@,@,48-57,/,.,-,_,+,,,#,$,%,~,="; # add @ symbol to the default list
  };

}
