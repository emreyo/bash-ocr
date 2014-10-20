#!/bin/bash

cleanup()
{
	rm /tmp/img.png
}

ocr()
{
	if [ $# -eq 1 ]; then
		if [ $1 == "tr" ]; then
			tesseract /tmp/img.png "output.$(date '+%F.%T')" -l tur && cleanup
		fi
	else
		tesseract /tmp/img.png "output.$(date '+%F.%T')"  && cleanup
	fi
}
echo "select the area after 3 seconds"
sleep 3 && gnome-screenshot -af "/tmp/img.png" && ocr






# datevar=$(date +%s)

# [ ! -d /tmp/ococr/ ] && mkdir -p /tmp/ococr/img/

# # [ ! -d /tmp/ococr/ ] && mkdir -p /tmp/ococr/txt/

# sleep 3
# import /tmp/ococr/img/ocr.$datevar.png

# mkdir tmp
# cp $@ tmp
# cd tmp
# pdftoppm * -f 1 -l 10 -r 600 ocrbook
# for i in *.ppm; do convert "$i" "`basename "$i" .ppm`.tif"; done
# for i in *.tif; do tesseract "$i" "`basename "$i" .tif`" -l nld; done
# for i in *.txt; do cat $i >> ${name}.txt; echo "[pagebreak]" >> ocr.$datevar.txt; done
# mv ocr.$datevar.txt ..
# rm *
# cd ..
# rm -rf tmp

# import -window root /tmp/shot.png



# #!/bin/sh