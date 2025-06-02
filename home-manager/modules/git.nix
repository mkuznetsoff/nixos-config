{ ... }: {
  programs.git = {
    enable = true;
    userName  = "mkuznetsoff";
    userEmail = "mk0805208@gmail.com";
    extraConfig = {
      credential.helper = "store";
    };
  };
}
