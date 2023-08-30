# resize image to 960x400 (Grav header image size) using ImageMagick
# https://superuser.com/questions/1358715/how-do-i-resize-and-pad-an-image-to-a-given-size-using-imagemagick
# https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
#
# example usage:
# sh resizegrav.sh /mnt/c/Users/aleskl/Downloads/image.jpg

extension="${1##*.}"
filename="${1%.*}"
convert "$1" -resize 960x400 -background white -gravity center -extent 960x400 "${filename}_960x400.${extension}"
echo "Output:" "${filename}_960x400.${extension}"

