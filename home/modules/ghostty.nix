{ ... }:

{
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "noctalia";
      background-opacity = 0.90;
      gtk-titlebar = false;
      font-size = 10;
    };
  };
}
