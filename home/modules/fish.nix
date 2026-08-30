{ ... }:

{
  programs.fish = {
    enable = true;

    shellAliases = {
      # tus aliases aquí
    };

    interactiveShellInit = ''
      fastfetch
      set -g fish_greeting "This is your memory?"
    '';
  };
}
