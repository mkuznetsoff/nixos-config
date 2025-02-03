{
  programs.nixvim.opts = {

    updatetime = 100;

    number = true;
    relativenumber = true;

    clipboard = "unnamedplus";

    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
    scrolloff = 5;

    cursorline = true;

    swapfile = false;
    undofile = true; # Build-in persistent undo

  };
}
