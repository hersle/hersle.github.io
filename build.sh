#!/bin/sh

for srcpath in *.md; do
	dstpath="$(basename $srcpath .md).html"
	echo "Building $dstpath:"
	pandoc $srcpath --standalone --mathjax -o $dstpath
done
