set -g fish_greeting ""

if status is-interactive
end

function fish_greeting
fastfetch
echo ""
end

set -U fish_color_autosuggestion magenta

function fish_prompt
    # "malwordest" in purple
    set_color purple
    echo -n $USER

    set_color afafaf
    echo -n "@"

    # "@Malwords" in white
    set_color white
    echo -n (hostname)

    # Current directory in white or gray for a clean look
    echo -n " "
    set_color brblack
    echo -n (prompt_pwd)

    # Reset and prompt symbol
    set_color normal
    echo -n ' > '
end
