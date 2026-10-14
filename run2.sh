#tool=dot
tool=neato
$tool -Tpng $1.dot >$1.png
$tool -Tsvg $1.dot >$1.svg

for a in *.dot;
    do
        echo "traitement du fichier $a"
        a2="${a%.*}"
        $tool -Tsvg $a > $a2.svg
        $tool -Tpng $a > $a2.png
done