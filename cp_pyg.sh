#!/bin/bash -f
DIST_DIR=source_code
WORKSPACE_DIR=workspace

if [ -e $DIST_DIR ]; then
    rm -r $DIST_DIR
fi
mkdir $DIST_DIR

for i in `find $WORKSPACE_BIR -name "*.java"`; do
    echo "processing $i..."
    mkdir -p $DIST_DIR/`dirname $i`
    pygmentize -f latex -O encoding=utf-8,linenos=True -P verboptions='frame=single,fontsize=\small' -F whitespace:tabs=True,tabsize=4 $i | sed 's/»/ /g' > $DIST_DIR/$i.tex
done
