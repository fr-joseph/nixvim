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
}
