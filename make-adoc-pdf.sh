#! /bin/bash

for adoc in *.adoc; do
    asciidoctor-pdf -a icons=font -a pdf-themesdir=/resources/themes -a pdf-theme=basic -a pdf-fontsdir=/resources/fonts -r asciidoctor-diagram $adoc
done
