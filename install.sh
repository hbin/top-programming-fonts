#!/bin/bash

FONTS_DIR=$HOME/.fonts
TOP_FONTS=("Menlo-Regular.ttf" "Monaco-Linux.ttf" "DejaVuSansMono.ttf" "3270Medium.otf")

function die () {
    echo "${@}"
    exit 1
}

cat <<EOF

--------------------------
 Top Programming Fonts!
--------------------------
  - Created and maintained by hbin

EOF

# Create font dir if not exists
if [[ ! -e $FONTS_DIR ]]; then
    mkdir $FONTS_DIR || die "Could not make $FONTS_DIR"
fi

for i in ${TOP_FONTS[*]}; do
    echo "Downloading $i"; echo
    wget -c https://github.com/hbin/top-programming-fonts/raw/master/$i \
      || die "Fail to download ${i}"
    mv $i $FONTS_DIR || die "Could not install $i"
    echo "Installed $i successfully"; echo
done

cat <<EOF

--------------------------
 Fonts installed! Enjoy!
--------------------------
  - If you have any question, pls
    mail to <huangbin88@foxmail.com>

EOF
