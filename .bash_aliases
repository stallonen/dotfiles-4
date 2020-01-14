# Folders
alias home="cd $HOME"
alias config="cd ~/.config/"
alias downloads="cd $HOME/Downloads"
alias music="cd $HOME/music"
alias images="cd $HOME/pics"

# Pacman
alias install="sudo pacman -S"
alias update="sudo pacman -Syu"

# Xresources
alias xconf="vim ~/.Xresources"
alias xreload="xrdb -load ~/.Xresources"

# Git
alias git-pull="~/scripts/git-pull.sh"
alias git-push="~/scripts/git-push.sh"

# Feh
alias set-random-wallpaper="feh -z --bg-fill ~/pics/wallpapers/"
alias watch='mpv --ytdl-format="bestvideo[ext=mp4][height<=?1080]+bestaudio[ext=m4a]" $1'

# Colors
alias colorscheme="wal -i /home/ma/pics/wallpapers/; sleep 0.10s; bspc wm -r; i3-msg restart"
