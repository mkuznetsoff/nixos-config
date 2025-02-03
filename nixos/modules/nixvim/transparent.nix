{
  programs.nixvim.plugins.transparent = {
    enable = false;
    settings = {
      extra_groups = [
        "BufferLineTabClose"
        "BufferLineBufferSelected"
        "BufferLineFill"
        "BufferLineBackground"
        "BufferLineSeparator"
        "BufferLineIndicatorSelected"
      ];
    };
  };
}
