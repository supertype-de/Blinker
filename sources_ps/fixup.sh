#!/bin/sh

echo "Post processing"
cd ../fonts_ttf/

ttfs=$(ls *.ttf)
for ttf in $ttfs
do
	gftools fix-dsig -f $ttf;
	gftools fix-hinting $ttf;
	[ -f $ttf.fix ] && mv $ttf.fix $ttf;
	gftools fix-fsselection $ttf --autofix;
done

cd ../sources_ps/
