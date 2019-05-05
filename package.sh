
set -e

if ! [[ -e arduino-builder-macosx-1.4.1.tar ]]; then
    wget https://downloads.arduino.cc/tools/arduino-builder-macosx-1.4.1.tar.bz2
    bunzip2 arduino-builder-macosx-1.4.1.tar.bz2
fi

cp arduino-builder-macosx-1.4.1.tar arduino-builder-macosx-fixed-1.4.1.tar

mkdir -p arduino-builder-macosx-fixed-1.4.1/tools/ctags/5.8-arduino11

cp ctags arduino-builder-macosx-fixed-1.4.1/tools/ctags/5.8-arduino11/ctags

tar -C arduino-builder-macosx-fixed-1.4.1 -rf  arduino-builder-macosx-fixed-1.4.1.tar tools/ctags/5.8-arduino11/ctags

bzip2 arduino-builder-macosx-fixed-1.4.1.tar


