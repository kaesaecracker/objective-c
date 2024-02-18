{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  nativeBuildInputs =
    (with pkgs; [
      clang
    ])
    ++ (with pkgs.gnustep; [
      make
      libobjc
      base
    ]);

  GNUSTEP_MAKEFILES = "${pkgs.gnustep.make.outPath}/share/GNUstep/Makefiles";
  MAKE = "${pkgs.gnustep.make.outPath}/bin/make";
}
