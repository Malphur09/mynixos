{ pkgs, ... }:

{
  home.packages = with pkgs; [
    btop
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
