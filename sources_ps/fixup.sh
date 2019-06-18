#!/bin/sh


echo "Post processing"
ttfs=$(ls ../fonts_ttf/*.ttf)
for ttf in $ttfs
do
	gftools fix-dsig -f $ttf;
	gftools fix-hinting $ttf;
	mv $ttf.fix $ttf;
done

