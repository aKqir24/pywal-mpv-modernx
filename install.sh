#!/bin/bash

# Paths & Conditions
THUMBFAST_SUPPORT=false
MPV_DIR="$HOME/.config/mpv"
MPV_SCRIPTS="$MPV_DIR/scripts"
MPV_SCRIPTS_OPTS="$MPV_DIR/scripts-opts"
SCRIPTS=('thumbfast/thumbfast.lua' 'scripts/pywal-mpv-modernx.lua')
CONF=('thumbfast/thumbfast.conf' 'mpv.conf')

# Initialize assets
git clone https://github.com/aKqir24/pywal-mpv-modernx.git /tmp/pywal16-mpv-modernx
echo -e 'Welcome to `pywal16-mpv-modernx` install script!!\n' && echo 'Setting up PATHS...'
for MPV_PATHS in $MPV_SCRIPTS $MPV_SCRIPTS_OPTS; do mkdir -p $MPV_PATHS; done
read -p "Do you want thumbfast support? [y/N] " THUMBFAST_SUPPORT
cd /tmp/pywal16-mpv-modernx

# Thumbfast support
if [[ ${THUMBFAST_SUPPORT^^} == "Y" ]]; then
	git checkout thumbfast-support
	git clone https://github.com/po5/thumbfast.git
	cp "${SCRIPTS[0]}" "$MPV_SCRIPTS"
	cp "${CONF[0]}" "$MPV_SCRIPTS_OPTS"
fi

# Copy pywal16-mpv-modernx resources
cp "${SCRIPTS[1]}" "$MPV_SCRIPTS"
cp "${CONF[1]}" "$MPV_DIR"
cp 'Material-Design-Iconic-Font.ttf' "$HOME/.fonts"

# Verify if files are installed
for SCRIPT_PATH in "${SCRIPTS[@]}"; do
	SCRIPT_FILE="$MPV_SCRIPTS/$(basename "$SCRIPT_PATH")"
	if [[ ! -e $SCRIPT_FILE ]]; then
		echo "$SCRIPT_FILE does not exist, please retry the installation!!"
		exit 1 
	fi 
done

if [[ ! -e $MPV_SCRIPTS_OPTS/$(basename "${CONF[0]}") ]] || [[ ! -e $MPV_DIR/${CONF[1]} ]]; then
	echo "Some Configurations is not properly installed!!"
	exit 1
fi

# Cleanup
rm -rf /tmp/pywal16-mpv-modernx
