# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# zsh
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/.rvm/bin
export HOMEBREW_GITHUB_API_TOKEN=ce195d8c9581ad8080d618293446c10c7abf338c
export LANG=en_US.UTF-8
HOMEBREW_NO_ANALYTICS=1
DEFAULT_USER="nguyen"
DISABLE_AUTO_UPDATE="true"
bindkey -e
setopt ALIASES APPEND_HISTORY AUTO_CD COMPLETE_ALIASES MENU_COMPLETE PROMPT_SUBST
zstyle :compinstall filename '/Users/nguyen/.zshrc'
unsetopt correct
autoload -Uz compinit
compinit

# ALIASES - GENERAL
alias .="open ."
alias cmus="cmus 2> /dev/null"
alias d="trash"
alias eb="/Applications/calibre.app/Contents/MacOS/ebook-convert"
alias flushdns="sudo killall -HUP mDNSResponder"
alias fuck="sudo !!"
alias htop="sudo htop"
alias iina="/Applications/IINA.app/Contents/MacOS/IINA"
alias ip="ipconfig getifaddr en1 && dig +short myip.opendns.com @resolver1.opendns.com"
alias imgur="python3 /Users/nguyen/Misc/imgur-downloader/imguralbum.py"
alias la="gls --format=long --classify --size --human-readable --group-directories-first --color=auto --all"
alias ls="gls --format=single-column --classify --size --human-readable --group-directories-first --color=auto"
alias m="mpv"
alias notify="terminal-notifier"
alias o="open ."
alias pinggg="ping -c 4 google.com"
alias s="curl --progress-bar -O"
alias soz="source /Users/nguyen/.zshrc"
alias space="ncdu"
alias speed="speedtest_cli --simple"
alias subt="subliminal download -l en"
alias w="wget --continue"
alias wo="cd /Users/nguyen/Later/New && wget --continue -O"

# ALIASES - homebrew
alias brdep="brew deps"
alias brdoc="brew doctor"
alias brin="brew info"
alias brins="brew install"
alias brlist="brew list"
alias brmpv="brew linkapps mpv"
alias brprune="brew prune"
alias brre="brew reinstall"
alias brs="brew search"
alias bruns="brew uninstall"
alias up="brew update && brew upgrade && brew prune && brew cleanup"

# ALIASES - cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias cdconfig="/Users/nguyen/.config"
alias cdd="cd /Users/nguyen/Downloads"
alias cddr="cd /Users/nguyen/Dropbox"
alias cdl="cd /Users/nguyen/Later"
alias cdmpv="/Users/nguyen/.config/mpv"
alias cdnew="cd /Users/nguyen/Later/New"

# ALIASES - ffmpeg
alias ts1="ffmpeg -i '1.mp4' -c copy -bsf:v h264_mp4toannexb -f mpegts 1.ts"
alias ts2="ffmpeg -i '2.mp4' -c copy -bsf:v h264_mp4toannexb -f mpegts 2.ts"
alias ts3="ffmpeg -i '3.mp4' -c copy -bsf:v h264_mp4toannexb -f mpegts 3.ts"
alias video2="ffmpeg -i 'concat:1.ts|2.ts' -c copy -bsf:a aac_adtstoasc 'out.mp4'"
alias video3="ffmpeg -i 'concat:1.ts|2.ts|3.ts' -c copy -bsf:a aac_adtstoasc 'out.mp4'"

# ALIASES - imagemagick
alias 162p="find . -size -163 -delete && mogrify -monitor -format jpg -quality 80 *.png && trash *.png"
alias cd162p="cdf && find . -size -163 -delete && mogrify -monitor -format jpg -quality 80 *.png && trash *.png"
alias qua="mogrify -monitor -quality 80% *.jpg && mogrify -monitor -quality 75% *.png"
alias cdqua="cdf && mogrify -monitor -quality 80% *.jpg && mogrify -monitor -quality 75% *.png"
alias png="mogrify -monitor -format jpg -quality 80 *.png && trash *.png"
alias cdpng="cdf && mogrify -monitor -format jpg -quality 80 *.png && trash *.png"
alias sat="mogrify -modulate 100,0 -monitor *.jpg"
alias cdsat="cdf && mogrify -modulate 100,0 -monitor *.jpg"

alias combinej="convert -monitor +append *.jpg out.jpg"
alias cdcombinej="cdf && convert -monitor +append *.jpg out.jpg"
alias combinejv="convert -monitor -append *.jpg out.jpg"
alias cdcombinejv="cdf && convert -monitor -append *.jpg out.jpg"
alias combinep="convert -monitor +append *.png out.png"
alias cdcombinep="cdf && convert -monitor +append *.png out.png"
alias combinepv="convert -monitor -append *.png out.png"
alias cdcombinepv="cdf && convert -monitor -append *.png out.png"

alias level="mogrify -monitor -level 25%,100% *.jpg ; mogrify -monitor -level 25%,100% *.png"
alias cdlevel="cdf && mogrify -monitor -level 25%,100% *.jpg ; mogrify -monitor -level 25%,100% *.png"
alias levell="mogrify -monitor -level 15%,100% *.jpg ; mogrify -monitor -level 15%,100% *.png"
alias cdlevell="cdf && mogrify -monitor -level 15%,100% *.jpg ; mogrify -monitor -level 15%,100% *.png"

alias mangaj="swap *.jpg && convert -monitor +append *.jpg -set filename:f '%t.%e' +adjoin '%[filename:f]'"
alias cdmangaj="cdf && swap *.jpg && convert -monitor +append *.jpg -set filename:f '%t.%e' +adjoin '%[filename:f]'"
alias mangap="swap *.png && convert -monitor +append *.png -set filename:f '%t.%e' +adjoin '%[filename:f]'"
alias cdmangap="cdf && swap *.png && convert -monitor +append *.png -set filename:f '%t.%e' +adjoin '%[filename:f]'"

alias splitjh="mogrify -crop 100%x50% +repage -monitor *.jpg"
alias cdsplitjh="cdf && mogrify -crop 100%x50% +repage -monitor *.jpg"
alias splitjv="mogrify -crop 50%x100% +repage -monitor *.jpg"
alias cdsplitjv="cdf && mogrify -crop 50%x100% +repage -monitor *.jpg"
alias splitph="mogrify -crop 100%x50% +repage -monitor *.png"
alias cdsplitph="cdf && mogrify -crop 100%x50% +repage -monitor *.png"
alias splitpv="mogrify -crop 50%x100% +repage -monitor *.png"
alias cdsplitpv="cdf && mogrify -crop 50%x100% +repage -monitor *.png"

# ALIASES - Sublime Text
alias subcmus="sub /Users/nguyen/.config/cmus/autosave"
alias subinput="sub /Users/nguyen/.config/mpv/input.conf"
alias subkara="sub /Users/nguyen/.config/karabiner/karabiner.json"
alias submpv="sub /Users/nguyen/.config/mpv/mpv.conf"
alias subz="sub /Users/nguyen/.zshrc"

# ALIASES - tree
alias tree1="tree -L 1"
alias tree2="tree -L 2"
alias tree3="tree -L 3"

# ALIASES - youtube-dl
alias y="youtube-dl --no-overwrites --continue --output '%(title)s.%(ext)s' --format 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' --write-sub --sub-lang 'en' --embed-subs --sub-format srt --convert-subs srt --encoding 'utf-8' --no-warnings"
alias ya="youtube-dl --no-overwrites --continue --output '%(title)s.%(ext)s' --extract-audio --audio-format 'mp3' --encoding 'utf-8' --no-warnings"

# cd then ls
function cd {
    builtin cd "$@" && ls -F
}

# Down for everyone or just me?
down() {
    wget -qO - "http://downforeveryoneorjustme.com/$1" | sed "/just you/!d;s/<[^>]*>//g;s/&#x2F;/\//g"
}

# mkdir then cd
function mk {
	command mkdir $1 && cd $1
}

# Swap 2 filenames
function swap()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE $2
}

# Toggle hiding iTerm Dock icon. Need this for dropdown iTerm2 window in all spaces
function toggleiterm() {
	pb='/usr/libexec/PlistBuddy'
	iTerm='/Applications/iTerm.app/Contents/Info.plist'
	echo "Do you wish to hide iTerm in Dock?"
	select ync in "Hide" "Show" "Cancel"; do
		case $ync in
			'Hide' )
			$pb -c "Add :LSUIElement bool true" $iTerm
				echo "relaunch iTerm to take effectives"
				break
				;;
			'Show' )
				$pb -c "Delete :LSUIElement" $iTerm
				echo "run killall 'iTerm' to exit, and then relaunch it"
				break
				;;
		'Cancel' )
			break
			;;
		esac
	done
}
