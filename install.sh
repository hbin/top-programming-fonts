#!/bin/bash

HBIN_FONT_DIR=$HOME/.font
HBIN_FONTS=("Menlo-Regular.ttf"  "Monaco-Linux.ttf")

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
if [[ ! -e $HBIN_FONT_DIR ]]; then
    mkdir $HBIN_FONT_DIR || die "Could not make $HBIN_FONT_DIR"
fi

for i in ${HBIN_FONTS[*]}; do
    echo "Downloading $i"; echo
    wget -c https://github.com/hbin/top-programming-fonts/raw/master/$i \
      || die "Fail to download ${i}"
    mv $i $HBIN_FONT_DIR || die "Could not install $i"
    echo "Installed $i successfully"; echo
done

cat <<EOF

--------------------------
 Fonts installed! Enjoying!
--------------------------
  - If you have any question, pls
    mail to <embrace.hbin@gmail.com>

EOF
