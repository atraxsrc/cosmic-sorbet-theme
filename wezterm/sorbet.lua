-- Sorbet for WezTerm, part of cosmic-sorbet-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("sorbet")
-- To follow COSMIC's Dark / Light toggle with the Sorbet Day half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "sorbet" or "sorbetday")

return {
  foreground = "#FFF6FF",
  background = "#05080A",

  cursor_bg = "#B2FFF3",
  cursor_fg = "#05080A",
  cursor_border = "#B2FFF3",
  compose_cursor = "#FFC79B",

  selection_bg = "#28213A",
  selection_fg = "none",

  scrollbar_thumb = "#5E616C",
  split = "#5E616C",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#020304", "#FF9FBC", "#BAF7B5", "#FFF6C3", "#B2FFF3", "#FFC79B", "#8ED9CF", "#F3CEFF" },
  brights = { "#5E616C", "#FFC8D8", "#D8FAD5", "#FFFBE2", "#D1FFF8", "#FFDEC4", "#DFBAFF", "#FFFFFF" },

  copy_mode_active_highlight_bg = { Color = "#B2FFF3" },
  copy_mode_active_highlight_fg = { Color = "#05080A" },
  copy_mode_inactive_highlight_bg = { Color = "#FFF6C3" },
  copy_mode_inactive_highlight_fg = { Color = "#05080A" },

  quick_select_label_bg = { Color = "#FFC79B" },
  quick_select_label_fg = { Color = "#05080A" },
  quick_select_match_bg = { Color = "#FFF6C3" },
  quick_select_match_fg = { Color = "#05080A" },

  tab_bar = {
    background = "#05080A",
    active_tab = { bg_color = "#B2FFF3", fg_color = "#05080A", intensity = "Bold" },
    inactive_tab = { bg_color = "#121019", fg_color = "#DFBAFF" },
    inactive_tab_hover = { bg_color = "#1A1727", fg_color = "#FFF6FF" },
    new_tab = { bg_color = "#05080A", fg_color = "#DFBAFF" },
    new_tab_hover = { bg_color = "#1A1727", fg_color = "#B2FFF3" },
  },
}
