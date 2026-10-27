{ pkgs, ... }:

{
  home.packages = with pkgs; [
    btop-rocm
    fastfetch
    file
    lsof

    fd
    rsync
    zip
    unzip
    _7zz

    curl
    wget
    jq
    dnsutils

    tldr
    just
  ];
}
