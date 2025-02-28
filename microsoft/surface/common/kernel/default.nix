{ lib, ... }:

let
  inherit (lib) mkOption types;

in {
  imports = [
    ./linux-5.19.17
    ./linux-6.0.17
    ./linux-6.1.18
    ./linux-6.4.14
  ];

  options.microsoft-surface.kernelVersion = mkOption {
    description = "Kernel Version to use (patched for MS Surface)";
    type = types.enum [ ];
  };
}
