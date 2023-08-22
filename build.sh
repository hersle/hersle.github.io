#!/bin/sh

for srcpath in *.md; do
	dstpath="$(basename $srcpath .md).html"
	echo "Building $dstpath:"
	sed "s/href=\"$dstpath\"/href=\"$dstpath\" class=\"currentpage\"/" header.html > /tmp/header_current.html
	pandoc $srcpath --metadata toc-title="Contents" --template=template.html -B /tmp/header_current.html -A footer.html --css=style.css --toc --mathjax --verbose -o $dstpath
done
