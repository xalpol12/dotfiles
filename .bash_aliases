# shortcut to aliases
alias aliases='nvim $HOME/.bash_aliases'

# utils
alias reboot='sudo systemctl reboot'
alias shutdown='sudo shutdown -h now'
alias gpu='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'

# network
alias netreset='sudo systemctl restart networking'
alias netscan='sudo iwlist wlp0s20f3 scan | grep SSID' # change network card id (wlp0s20d3) if necessary

# monitor configs
alias ext-disp-left='$HOME/.config/i3/xrandr-monitors/dual-monitors-left-external-right-primary.sh'
alias ext-disp-right='$HOME/.config/i3/xrandr-monitors/dual-monitors-right-external-left-primary.sh'
alias ext-disp-up='$HOME/.config/i3/xrandr-monitors/dual-monitors-down-primary-up-external.sh'
alias ext-disp-none='$HOME/.config/i3/xrandr-monitors/single-monitor-main.sh'
