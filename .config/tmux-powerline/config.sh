# tmux-powerline user config — Rosé Pine palette.
# Powerline reads this file on every status redraw, so changes are live within
# one status-interval (2s by default).
#
# Rosé Pine "main" palette:
#   base=#191724   surface=#1f1d2e  overlay=#26233a  muted=#6e6a86
#   subtle=#908caa text=#e0def4     love=#eb6f92     gold=#f6c177
#   rose=#ebbcba   pine=#31748f     foam=#9ccfd8     iris=#c4a7e7

export TMUX_POWERLINE_THEME='default'
export TMUX_POWERLINE_PATCHED_FONT_IN_USE='true'

# Weather: fixed location for Indore, India (22.7196°N, 75.8577°E).
# Auto-detect mode leaked a unix timestamp into the displayed string;
# fixed coordinates bypass the auto-detect cache path.
export TMUX_POWERLINE_SEG_WEATHER_LAT='22.7196'
export TMUX_POWERLINE_SEG_WEATHER_LON='75.8577'
export TMUX_POWERLINE_SEG_WEATHER_UNIT='c'
export TMUX_POWERLINE_SEG_WEATHER_DATA_PROVIDER='yrno'
export TMUX_POWERLINE_SEG_WEATHER_UPDATE_PERIOD='600'

# Bar background + default foreground.
export TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR='#191724'  # base
export TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR='#e0def4'  # text

# Each entry: "segment_name bg_color fg_color".
# Alternating base/overlay backgrounds give a subtle stripe between segments
# (powerline draws an arrow separator wherever adjacent bg colors differ).
TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
    "tmux_session_info #191724 #c4a7e7"  # base / iris
    "hostname          #26233a #e0def4"  # overlay / text
    "vcs_branch        #31748f #191724"  # pine / base — git branch as accent
)

TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
    "weather  #26233a #9ccfd8"  # overlay / foam — temp for Indore
    "date_day #191724 #f6c177"  # base / gold
    "date     #26233a #f6c177"  # overlay / gold
    "time     #191724 #e0def4"  # base / text
)
