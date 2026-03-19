{ pkgs, ... }:

let
  koala-clash = pkgs.stdenv.mkDerivation {
    pname = "koala-clash";
    version = "0.2.8";

    src = pkgs.fetchurl {
      url = "https://github.com/coolcoala/koala-clash/releases/download/v0.2.8/Koala.Clash_amd64.app.tar.gz";
      sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };

    nativeBuildInputs = [ pkgs.autoPatchelfHook ];

    buildInputs = with pkgs; [
      glib
      gtk3
      webkitgtk
      libayatana-appindicator
      openssl
    ];

    unpackPhase = ''
      tar xf $src
    '';

    installPhase = ''
      mkdir -p $out/bin
      cp -r * $out/

      # бинарь обычно внутри
      chmod +x $out/koala-clash || true

      ln -s $out/koala-clash $out/bin/koala-clash || true
    '';
  };
in
{
  home.packages = [ koala-clash ];
}
