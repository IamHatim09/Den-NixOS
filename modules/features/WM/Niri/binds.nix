{
  den.ful.WM.Niri.homeManager = { pkgs, ... }: {
    programs.niri.settings.binds = {
      "Mod+d".action.spawn = [ "rofi" ];
      "Mod+Return".action.spawn = "${pkgs.kitty}/bin/kitty";

      "Mod+h".action.focus-column-left = [ ];
      "Mod+l".action.focus-column-right = [ ];
      "Mod+j".action.focus-window-down = [ ];
      "Mod+k".action.focus-window-up = [ ];
      "Mod+u".action.focus-workspace-up = [ ];
      "Mod+d".action.focus-workspace-down = [ ];

      "Mod+Shift+r".action.switch-preset-window-height = [ ];
      "Mod+r".action.switch-preset-column-width = [ ];

      "Mod+Shift+h".action.move-column-left = [ ];
      "Mod+Shift+l".action.move-column-right = [ ];
      "Mod+Shift+j".action.move-window-down = [ ];
      "Mod+Shift+k".action.move-window-up = [ ];
      "Mod+Shift+u".action.move-window-to-workspace-up = [ ];
      "Mod+Shift+d".action.move-window-to-workspace-down = [ ];

      "Mod+q".action.close-window = [ ];
      "Mod+f".action.maximize-column = [ ];
      "Mod+Shift+f".action.fullscreen-window = [ ];

      "Mod+Comma".action.consume-window-into-column = [ ];
      "Mod+Period".action.expel-window-from-column = [ ];

      "Mod+o" = {
        action.toggle-overview = [ ];
        repeat = false;
      };

      "Mod+Shift+e".action.quit.skip-confirmation = true;
    };
  };
}
