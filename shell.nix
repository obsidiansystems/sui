{ pkgs ? import ./dep/nixpkgs {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    turbo nodejs-14_x nodePackages.pnpm
  ];
}
