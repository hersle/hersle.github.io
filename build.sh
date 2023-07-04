#!/bin/sh

for srcpath in *.md; do
	dstpath="$(basename $srcpath .md).html"
	echo "Building $dstpath:"
	pandoc $srcpath --template=template.html -B header.html --css=style.css --toc --mathjax -o $dstpath
done
