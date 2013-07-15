#!/bin/bash
cd img
rm -rf tn-kat
cp -r kat tn-kat
cd tn-kat
find . -type f -iname '*.pdf' -delete
mogrify -resize '209x290!' -quality 70 */*.jpg
