#!/bin/bash
# You need po4a > 0.54, see https://github.com/mquinson/po4a/releases
# There is no need of system-wide installation of po4a
# Usage: PERLLIB=/path/to/po4a/lib make_pot.sh
# you may set following variables
# SRCDIR root of the documentation repository
# POTDIR place where to create the pot


####################################
# INITILIZE VARIABLES
####################################

# root of the documentation repository
SRCDIR_MODULE="./content/fr"

# place where to create the pot files
if [ -z "$POTDIR" ] ; then
	POTDIR="./l10n/pot"
fi

####################################
# TEST IF IT CAN WORK
####################################

if [ ! -d "$SRCDIR_MODULE" ] ; then
    echo "Error, please check that SRCDIR match to the root of the documentation repository"
    echo "You specified modules are in $SRCDIR_MODULE"
    exit 1
fi


####################################
# HANDLE articles and pages
####################################

while IFS= read -r -d '' file
do
    basename=$(basename -s .md "$file")
    dirname=$(dirname "$file")
    path="${dirname#$SRCDIR_MODULE/}"

    if [ "$dirname" = "$SRCDIR_MODULE" ]; then
        potname=$basename.pot
    else
        potname=$path/$basename.pot
        mkdir -p "$POTDIR/$path"
    fi

    po4a-gettextize \
    	--format asciidoc --option debug split_attributelist \
    	--master "$file" --master-charset "UTF-8" \
    	--po "$POTDIR/$potname"

done <   <(find -L "$SRCDIR_MODULE" -name "*.md" -print0)
