# General {{{

set :step, 5
set :snap, 10
set :gravity, :center
set :urgent, false
set :resize, false
set :tiling, false
set :font, "xft:Bitstream Vera Sans Mono-9"
set :separator, "|"
#}}}

# Screens {{{

screen 1 do
  top    [ :views, :title, :spacer, :keychain, :tray, :sublets ]
  bottom [ ]
end

screen 2 do
  top    [ :views ]
  bottom [ ]
end
#}}}

# Styles {{{
style :all do
  background  "#1a1a1a"
  border      0
  padding     2, 8
end

style :title do
  foreground  "#ffffff"
end

style :sublets do
  foreground "#a8a8a8"
  icon       "#777777"
end

style :separator do
  padding        1, 0, 2, 0
  foreground     "#DF8787"
end

style :clients do
  active      "#a3babf", 2
  inactive    "#5e717f", 2
  margin      3
end

style :subtle do
  padding     0
  panel       "#1a1a1a"
  background  "#595959"
  stipple     "#595959"
end

style :views do
  padding 1, 8, 0, 8

  style :focus do
    foreground     "#ffffff"
    border_bottom  "#01B78C", 3
  end

  style :occupied do
    foreground     "#a8a8a8"
    border_bottom  "#fecf35", 3
  end

  style :unoccupied do
    padding       1, 8, 2, 8
    foreground    "#777777"
    margin_bottom 1
  end

  style :urgent do
    padding        1, 8, 0, 8
    foreground     "#a8a8a8"
    border_bottom  "#6600CC", 3
  end
end
# }}}

# Gravities {{{

gravity :top_left,       [   0,   0,  50,  50 ]
gravity :top_left66,     [   0,   0,  50,  66 ]
gravity :top_left33,     [   0,   0,  50,  34 ]
gravity :top,            [   0,   0, 100,  50 ]
gravity :top66,          [   0,   0, 100,  66 ]
gravity :top33,          [   0,   0, 100,  34 ]
gravity :top_right,      [  50,   0,  50,  50 ]
gravity :top_right66,    [  50,   0,  50,  66 ]
gravity :top_right33,    [  50,   0,  50,  33 ]
gravity :left,           [   0,   0,  50, 100 ]
gravity :left66,         [   0,   0,  66, 100 ]
gravity :left33,         [   0,   0,  33, 100 ]
gravity :center,         [   0,   0, 100, 100 ]
gravity :center66,       [  17,  17,  66,  66 ]
gravity :center33,       [  33,  33,  33,  33 ]
gravity :right,          [  50,   0,  50, 100 ]
gravity :right66,        [  34,   0,  66, 100 ]
gravity :right33,        [  67,  50,  33, 100 ]
gravity :bottom_left,    [   0,  50,  50,  50 ]
gravity :bottom_left66,  [   0,  34,  50,  66 ]
gravity :bottom_left33,  [   0,  67,  50,  33 ]
gravity :bottom,         [   0,  50, 100,  50 ]
gravity :bottom66,       [   0,  34, 100,  66 ]
gravity :bottom33,       [   0,  67, 100,  33 ]
gravity :bottom_right,   [  50,  50,  50,  50 ]
gravity :bottom_right66, [  50,  34,  50,  66 ]
gravity :bottom_right33, [  50,  67,  50,  33 ]
#}}}

# Grabs {{{

# Jump to view1, view2, ...
grab "W-1", :ViewJump1
grab "W-2", :ViewJump2
grab "W-3", :ViewJump3
grab "W-4", :ViewJump4
grab "W-5", :ViewJump5

# Switch current view
grab "W-S-1", :ViewSwitch1
grab "W-S-2", :ViewSwitch2
grab "W-S-3", :ViewSwitch3
grab "W-S-4", :ViewSwitch4
grab "W-S-5", :ViewSwitch5

# Select next and prev view */
grab "KP_Add",      :ViewNext
grab "KP_Subtract", :ViewPrev

# Move mouse to screen1, screen2, ...
grab "W-A-1", :ScreenJump1
grab "W-A-2", :ScreenJump2
grab "W-A-3", :ScreenJump3
grab "W-A-4", :ScreenJump4

# Force reload of config and sublets
grab "W-C-r", :SubtleReload

# Force restart of subtle
grab "W-C-S-r", :SubtleRestart

# Quit subtle
grab "W-C-q", :SubtleQuit

# Move current window
grab "W-B1", :WindowMove

# Resize current window
grab "W-B3", :WindowResize

# Toggle floating mode of window
grab "W-f", :WindowFloat

# Toggle fullscreen mode of window
grab "W-space", :WindowFull

# Toggle sticky mode of window (will be visible on all views)
grab "W-s", :WindowStick

# Toggle zaphod mode of window (will span across all screens)
grab "W-equal", :WindowZaphod

# Raise window
grab "W-w", :WindowRaise

# Lower window
grab "W-a", :WindowLower

# Select next windows
grab "W-Left",  :WindowLeft
grab "W-Down",  :WindowDown
grab "W-Up",    :WindowUp
grab "W-Right", :WindowRight

# Kill current window
grab "W-S-k", :WindowKill

# Cycle between given gravities
grab "W-KP_7", [ :top_left,     :top_left66,     :top_left33     ]
grab "W-KP_8", [ :top,          :top66,          :top33          ]
grab "W-KP_9", [ :top_right,    :top_right66,    :top_right33    ]
grab "W-KP_4", [ :left,         :left66,         :left33         ]
grab "W-KP_5", [ :center,       :center66,       :center33       ]
grab "W-KP_6", [ :right,        :right66,        :right33        ]
grab "W-KP_1", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
grab "W-KP_2", [ :bottom,       :bottom66,       :bottom33       ]
grab "W-KP_3", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# Exec programs
grab "W-Return", "urxvt"
grab "W-z", "dmenu_run"

# Run Ruby lambdas
grab "S-F2" do |c|
  puts c.name
end

grab "S-F3" do
  puts Subtlext::VERSION
end
#}}}

# Tags {{{

# Simple tags
tag "browser", "uzbl|opera|firefox|navigator|(google\-)?chrom[e|ium]"
tag "mail",    "Mail|Thunderbird"
tag "terms",   "xterm|[u]?rxvt"
tag "chat",    "Pidgin"

# Placement
tag "editor" do
  match  "[g]?vim"
  resize true
end

tag "fixed" do
  geometry [ 10, 10, 100, 100 ]
  stick    true
end

tag "resize" do
  match  "sakura|gvim"
  resize true
end

tag "gravity" do
  gravity :center
end

# Modes
tag "stick" do
  match "mplayer"
  float true
  stick true
end

tag "float" do
  match "display"
  float true
end
#}}}

# Views {{{

iconpath = "#{ENV["HOME"]}/.config/subtle/icons"

view "www" do
    match     "browser"
    dynamic   false
    icon      "/#{iconpath}/world.xbm"
    icon_only true
end

view "mail" do
    match     "mail"
    dynamic   false
    icon      "/#{iconpath}/pencil.xbm"
    icon_only true
end

view "terms" do
    match     "terms"
    dynamic   false
    icon      "/#{iconpath}/terminal.xbm"
    icon_only true
end

view "etc" do
    match     "default"
    dynamic   false
    icon      "#{iconpath}/bug.xbm"
    icon_only true
end

view "chat" do
    match     "chat"
    dynamic   false
    icon      "#{iconpath}/balloon.xbm"
    icon_only true
end

#}}}

# Sublets {{{

sublet :clock do
  interval      30
  foreground    "#eeeeee"
  background    "#000000"
  format_string "%d/%m/%Y %H:%M:%S "
end
#}}}

# vim:ts=2:bs=2:sw=2:et:fdm=marker
