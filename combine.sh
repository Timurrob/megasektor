#!/bin/bash
rm _includes/scripts.html
rm _includes/styles.html
rm js/script.js
rm css/style.css

TIMESTAMP=`date +%s`
echo "<script type='text/javascript' src='js/script.js?t=$TIMESTAMP'></script>" > _includes/scripts.html
echo "<link rel='stylesheet' href='css/style.css?t=$TIMESTAMP' />" > _includes/styles.html


for file in rs-plugin/css/settings.css \
            css/rs-responsive.css \
            css/bootstrap.css \
            css/custom.css \
            css/isotope.css \
            css/color_scheme.css \
            css/font-awesome.css \
            css/font-awesome-ie7.css \
            css/flexslider.css \
            css/jquery.fancybox.css
do
  echo >> css/style.css
  echo >> css/style.css
  cat $file >> css/style.css
done

for file in js/jquery.min.js \
            js/bootstrap.js \
            js/jquery.flexslider-min.js \
            js/jquery.isotope.js \
            js/jquery.fancybox.pack.js \
            rs-plugin/js/jquery.themepunch.plugins.min.js \
            rs-plugin/js/jquery.themepunch.revolution.min.js \
            js/revolution.custom.js \
            js/custom.js
do
  echo >> js/script.js
  echo >> js/script.js
  cat $file >> js/script.js
  echo ';' >> js/script.js
done
