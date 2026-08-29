{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty
    ghostty
    fastfetch
    btop
    bat
    vim
    neovim
    git
    yazi
  ];
}
