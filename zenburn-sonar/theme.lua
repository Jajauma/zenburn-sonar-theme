-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
local gears = require("gears")
local theme = {}
gears.wallpaper.set(gears.color.create_solid_pattern("#2a302b"))
-- }}}

-- {{{ Styles
theme.font      = "sans 10"

-- {{{ Colors
theme.fg_normal  = "#DCDCCC"
theme.fg_focus   = "#F0DFAF"
theme.fg_urgent  = "#DCDCCC"
theme.bg_normal  = "#3F3F3F"
theme.bg_focus   = "#1E2320"
theme.bg_urgent  = "#8A4E01"
theme.bg_systray = theme.bg_normal
theme.bg_minimize = "#E5DDB7"
-- }}}

-- {{{ Borders
theme.useless_gap   = 0
theme.border_width  = 2
theme.border_normal = "#3F3F3F"
theme.border_focus  = "#4685C7"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "@AWESOME_THEMES_PATH@/zenburn-sonar/taglist/squarefz.png"
theme.taglist_squares_unsel = "@AWESOME_THEMES_PATH@/zenburn-sonar/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = "@AWESOME_THEMES_PATH@/zenburn-sonar/site-logosq.png"
theme.menu_submenu_icon      = "@AWESOME_THEMES_PATH@/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/tile.png"
theme.layout_tileleft   = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/tileleft.png"
theme.layout_tilebottom = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/tilebottom.png"
theme.layout_tiletop    = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/tiletop.png"
theme.layout_fairv      = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/fairv.png"
theme.layout_fairh      = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/fairh.png"
theme.layout_spiral     = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/spiral.png"
theme.layout_dwindle    = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/dwindle.png"
theme.layout_max        = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/max.png"
theme.layout_fullscreen = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/fullscreen.png"
theme.layout_magnifier  = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/magnifier.png"
theme.layout_floating   = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/floating.png"
theme.layout_cornernw   = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/cornernw.png"
theme.layout_cornerne   = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/cornerne.png"
theme.layout_cornersw   = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/cornersw.png"
theme.layout_cornerse   = "@AWESOME_THEMES_PATH@/zenburn-sonar/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "@AWESOME_THEMES_PATH@/zenburn-sonar/titlebar/maximized_normal_inactive.png"
-- }}}

theme.icon_theme = "mate"
-- }}}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
