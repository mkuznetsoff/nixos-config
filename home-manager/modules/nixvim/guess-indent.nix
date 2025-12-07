{
  programs.nixvim.plugins.guess-indent = {
    enable = true;
    settings = {
      auto_cmd = true;
  filetype_exclude = [
    # "markdown"
  ];
  buftype_exclude = [
    "help" "nofile" "toggleterm" "alpha"
  ];
  override_editorconfig = true;
    };
  };
}
