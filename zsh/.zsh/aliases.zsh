alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias g="git"
alias o="open"

alias serv="python3 -m http.server"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# Editor aliases
alias v='vim'
alias c='code'

function mp4convert() {
    filename=$(basename -- "$1")
    filename="${filename%.*}"

    ffmpeg -i "$1" -c:v copy -c:a aac -ab 160k -ac 2 "$filename.mp4"
}

function mp4remux() {
    filename=$(basename -- "$1")
    filename="${filename%.*}"

    ffmpeg -i "$1" -c:v copy -c:a copy "$filename.mp4"
}
