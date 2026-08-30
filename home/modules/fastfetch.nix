{ ... }:

{
  programs.fastfetch.enable = true;

  xdg.configFile = {
    "fastfetch/config.jsonc".source =
      ../fastfetch/config.jsonc;

    "fastfetch/logo.txt".source =
      ../fastfetch/logo.txt;
   };
}
