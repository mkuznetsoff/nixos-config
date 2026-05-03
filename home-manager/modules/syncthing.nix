{...}: {
services.syncthing = {
  enable = true;
  settings = {
    devices = {
      "server" = {
        id = "HD2DWJ4-RJ3ZKXI-IJ2O6MS-G6CC7YB-XGH565W-B6FSIF3-ALDZ52H-XYFK2Q3";
      };
    };
    folders = {
      "obsidian" = {
        path = "~/Notes/";
        devices = [ "server" ];
      };
    };
  };
};
}
