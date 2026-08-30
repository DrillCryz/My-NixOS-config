{ pkgs, ... }:

{
  home.packages = with pkgs; [
    btop
    bat
    vim
    neovim
    git
    yazi
  ];
}
