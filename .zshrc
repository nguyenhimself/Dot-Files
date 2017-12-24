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

# thefuck
eval "$(thefuck --alias)"

# ALIASES - GENERAL
alias .="open ."
alias 4chan="python /Users/nguyen/Dropbox/Apps/4chan.py"
alias cmus="cmus 2> /dev/null"
alias d="trash"
alias eb="/Applications/calibre.app/Contents/MacOS/ebook-convert"
alias exif="exiftool -all="
alias flushdns="sudo killall -HUP mDNSResponder"
alias htop="sudo htop"
alias iina="/Applications/IINA.app/Contents/MacOS/IINA"
alias ip="ipconfig getifaddr en0 && dig +short myip.opendns.com @resolver1.opendns.com"
alias imgur="python3 /Users/nguyen/Dropbox/Apps/imgur.py"
alias la="gls --format=long --classify --size --human-readable --group-directories-first --color=auto --all"
alias ls="gls --format=single-column --classify --size --human-readable --group-directories-first --color=auto"
alias m="mpv"
alias matrix="cmatrix -s"
alias mkvextract="/Applications/MKVToolNix.app/Contents/MacOS/mkvextract tracks"
alias notify="terminal-notifier"
alias o="open ."
alias pinggg="ping -c 4 google.com"
alias s="curl --progress-bar -O"
alias soz="source /Users/nguyen/.zshrc"
alias speed="speedtest-cli --simple"
alias stream="streamlink --player mpv --default-stream best"
alias transcode="transcode-video"
alias video="transcode-video"
alias usb="ioreg -p IOUSB"

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

# ALIASES - imagemagick - Remove empty files and convert all PNG files
alias 162p="find . -size -163 -delete && mogrify -monitor -format jpg -quality 80 *.png && trash *.png"
alias cd162p="cdf && find . -size -163 -delete && mogrify -monitor -format jpg -quality 80 *.png && trash *.png"

# ALIASES - imagemagick - Reduce quality to 80%
alias qua="mogrify -monitor -quality 80% *.jpg && mogrify -monitor -quality 75% *.png"
alias cdqua="cdf && mogrify -monitor -quality 80% *.jpg && mogrify -monitor -quality 75% *.png"

# ALIASES - imagemagick - Convert all PNG files to JPG
alias png="mogrify -monitor -format jpg -quality 80 *.png && trash *.png"
alias cdpng="cdf && mogrify -monitor -format jpg -quality 80 *.png && trash *.png"

# ALIASES - imagemagick - Turn into B&W
alias sat="mogrify -modulate 100,0 -monitor *.jpg"
alias cdsat="cdf && mogrify -modulate 100,0 -monitor *.jpg"

# ALIASES - imagemagick - Combined JPG and PNG files
alias combinej="convert -monitor +append *.jpg out.jpg"
alias cdcombinej="cdf && convert -monitor +append *.jpg out.jpg"
alias combinejv="convert -monitor -append *.jpg out.jpg"
alias cdcombinejv="cdf && convert -monitor -append *.jpg out.jpg"
alias combinep="convert -monitor +append *.png out.png"
alias cdcombinep="cdf && convert -monitor +append *.png out.png"
alias combinepv="convert -monitor -append *.png out.png"
alias cdcombinepv="cdf && convert -monitor -append *.png out.png"

# ALIASES - imagemagick - Increase contrast by 25%
alias level="mogrify -monitor -level 25%,100% *.jpg ; mogrify -monitor -level 25%,100% *.png"
alias cdlevel="cdf && mogrify -monitor -level 25%,100% *.jpg ; mogrify -monitor -level 25%,100% *.png"
alias levell="mogrify -monitor -level 15%,100% *.jpg ; mogrify -monitor -level 15%,100% *.png"
alias cdlevell="cdf && mogrify -monitor -level 15%,100% *.jpg ; mogrify -monitor -level 15%,100% *.png"

# ALIASES - imagemagick - Combined JPG files into one file and remove the old ones
alias manga="swap *.jpg && convert -monitor +append *.jpg -set filename:f '%t.%e' +adjoin '%[filename:f]'"
alias cdmanga="cdf && swap *.jpg && convert -monitor +append *.jpg -set filename:f '%t.%e' +adjoin '%[filename:f]'"

# ALIASES - imagemagick - Resize JPG files
alias cdsize50="cdf && mogrify -monitor -resize 50x50% *.jpg"
alias size50="mogrify -monitor -resize 50x50% *.jpg"
alias cdsize60="cdf && mogrify -monitor -resize 60x60% *.jpg"
alias size60="mogrify -monitor -resize 60x60% *.jpg"
alias cdsize70="cdf && mogrify -monitor -resize 70x70% *.jpg"
alias size70="mogrify -monitor -resize 70x70% *.jpg"
alias cdsize80="cdf && mogrify -monitor -resize 80x80% *.jpg"
alias size80="mogrify -monitor -resize 80x80% *.jpg"

# ALIASES - imagemagick - Split JPG and PNG files into 2 seperated files
alias splitjh="mogrify -crop 100%x50% +repage -monitor *.jpg"
alias cdsplitjh="cdf && mogrify -crop 100%x50% +repage -monitor *.jpg"
alias splitjv="mogrify -crop 50%x100% +repage -monitor *.jpg"
alias cdsplitjv="cdf && mogrify -crop 50%x100% +repage -monitor *.jpg"
alias splitph="mogrify -crop 100%x50% +repage -monitor *.png"
alias cdsplitph="cdf && mogrify -crop 100%x50% +repage -monitor *.png"
alias splitpv="mogrify -crop 50%x100% +repage -monitor *.png"
alias cdsplitpv="cdf && mogrify -crop 50%x100% +repage -monitor *.png"

# ALIASES - ncdu
alias space="ncdu"
alias cdncdu="cdf && ncdu"
alias cdspace="cdf && ncdu"

# ALIASES - Sublime Text
alias subcmus="sub /Users/nguyen/.config/cmus/autosave"
alias subinput="sub /Users/nguyen/.config/mpv/input.conf"
alias subhammer="sub /Users/nguyen/.hammerspoon/init.lua"
alias subkara="sub /Users/nguyen/.config/karabiner/karabiner.json"
alias submpv="sub /Users/nguyen/.config/mpv/mpv.conf"
alias subz="sub /Users/nguyen/.zshrc"

# ALIASES - Subtitles
alias cdsubt="cdf && subt *"
alias subt="subliminal download --single --language en --max-workers 10 --verbose"

# ALIASES - tree
alias tree1="tree -L 1"
alias tree2="tree -L 2"
alias tree3="tree -L 3"

#ALIASES - wget
alias w="wget --continue"
alias wgetpage="wget --page-requisites --convert-links"
alias wgetsite="wget --mirror --page-requisites --convert-links --wait=3"
alias wpage="wget --page-requisites --convert-links"
alias wsite="wget --mirror --page-requisites --convert-links --wait=3"

# ALIASES - youtube-dl
alias y="youtube-dl --no-overwrites --continue --output '%(title)s.%(ext)s' --format 'bestvideo[height<=?1080]+bestaudio[ext=m4a]/best' --write-sub --sub-lang 'en' --embed-subs --sub-format srt --convert-subs srt --encoding 'utf-8' --no-warnings"
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
function swap() {
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

# wget to New
function wo() {
	cd /Users/nguyen/Later/New
	wget --continue -O "$1".mp4 $2
}
