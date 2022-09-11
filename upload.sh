#!/bin/zsh

echo "Renaming images"
./rename.sh

echo "Compressing images"
./compress.sh

echo "Pushing to GitHub"
git rm -r --cached wallpapers --quiet
git rm -r --cached medium --quiet
git rm -r --cached compressed --quiet
git add wallpapers 
git add compressed
git add medium
git commit -am "[BOT] Wallpapers Updated" --quiet
git push origin main --quiet
echo "Images uploaded"
