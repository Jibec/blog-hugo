#!/bin/bash

echo ""
echo "Pull latest changes from git"

git pull

echo ""
echo "Transform source files to POT (and update existing po files)"

./make_pot.sh

echo ""
echo "Transform po file to localized source files"

./use_po.sh

echo ""
echo "Generate content with Hugo"

../hugo

echo ""
echo "Make sure the rights are correct for fedorapeople.org"

chmod 755 -R public/

echo ""
echo "Push content online"

rsync -avz --delete public/ -e ssh jibecfed@fedorapeople.org:~/public_html/blog-hugo

echo ""
echo "The end."