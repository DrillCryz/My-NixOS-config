{ ... }:

{
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "noctalia";
      background-opacity = 0.60;
      gtk-titlebar = false;
      font-size = 10;
    };
  };
}
