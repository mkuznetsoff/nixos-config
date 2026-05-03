{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  pname = "koala-clash";
  version = "1.1.0";

  src = pkgs.fetchurl {
    url = "https://github.com/coolcoala/koala-clash/releases/download/1.1.0/Koala.Clash_amd64.deb";
    sha256 = "sha256-N+GOC6XhMH5D1PBpYebKkBgjlRJ050dhj1kOzklNq0I=";
  };

  nativeBuildInputs = [
    pkgs.autoPatchelfHook
    pkgs.gnutar
    pkgs.binutils
  ];

  autoPatchelfIgnoreMissingDeps = [ "libc.musl-x86_64.so.1" ];

  buildInputs = with pkgs; [
    glib
    gtk3
    webkitgtk_4_1
    libayatana-appindicator
    openssl
    mesa
    libGL
    libglvnd
    alsa-lib
    nss
    nspr
    mihomo
  ];

  unpackPhase = ''
    ar x $src
    tar xf data.tar.*
  '';

  installPhase = ''
    mkdir -p $out/bin
    mkdir -p $out/share

    cp -r opt $out/
    cp -r usr/share/* $out/share/

    chmod +x $out/opt/Koala.Clash/koala-clash

    ln -s $out/opt/Koala.Clash/koala-clash $out/bin/koala-clash
  '';

  postFixup = ''
    chmod 4755 $out/opt/Koala.Clash/chrome-sandbox || true
  '';

  meta = {
    description = "Koala Clash client";
    platforms = pkgs.lib.platforms.linux;
  };
}
