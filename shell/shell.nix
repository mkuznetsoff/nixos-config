with import <nixpkgs> {};

let
  sources = import ./nix/sources.nix;
  finalfusion = import sources.finalfusion {};
in mkShell {
  
  nativeBuildInputs = [ qt5.qttools.dev python3Packages.autopep8 python3Packages.flake8 ];

  propagatedBuildInputs = [
    (python3.withPackages (ps: with ps; [
      matplotlib
      pyqt5
      setuptools
      scikitlearn
      toml
    ]))
    finalfusion.python3Packages.finalfusion
  ];

  # Normally set by the wrapper, but we can't use it in nix-shell (?).
  QT_QPA_PLATFORM_PLUGIN_PATH="${qt5.qtbase.bin}/lib/qt-${qt5.qtbase.version}/plugins";
}
