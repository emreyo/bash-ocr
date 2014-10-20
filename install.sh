#!/bin/bash

# if [ ! -z `which import` ]; then
# 	# if [ -z `which xfce4-screenshooter` ]
# 	echo "* need imagemagick/import"
	
# 	if [ $UID != 0 ]; then 
# 		echo -e "* start me with sudo, or copy and paste this line:\n     sudo apt-get install -y graphicsmagick-imagemagick-compat"
# 	else
# 		echo "* packages installing, please wait"
# 		sudo apt-get install -y graphicsmagick-imagemagick-compat &> /dev/null
# 	fi
# 	exit 1
# fi

list()
{
	printf "****\n"
	printf "%-10s %-10s %-10s %-10s\n" afr ara aze bel ben bul cat ces chi-sim chi-tra chr dan deu deu-frak dev ell eng enm epo equ est eus fin fra frk frm glg heb hin hrv hun ind isl ita ita-old jpn kan kor lav lit mal mkd mlt msa nld nor osd pol por ron rus slk slk-frak slv spa spa-old sqi srp swa swe tam tel tgl tha tur ukr vie
	printf "****\n"
	
}

if [ $UID != 0 ]; then
	echo "start me with root privileges"
	exit 1
fi

# echo "* which languages you will use?\n type -1 for none, or if you finished choosing languages. "
# list

# while :
# do
# 	read -p "language> "
# 	if [ $ANSWER -eq -1 ]; then
# 		break
# 	fi
# 	sudo apt-get install tesseract-ocr-$ANSWER &> /dev/null
# 	echo "tesseract-ocr-$ANSWER installed, I guess..."
# done

# support for en/tur at the moment

sudo apt-get install -y tesseract-ocr tesseract-ocr-tur
if [ ! -d "$HOME/bin" ]; then
	mkdir -p "$HOME/bin"
fi

cp oc.sh "$HOME/bin/oc"

if [ ! -z $(which gnome-screenshot) ]; then
	echo -e "* only gnome-screenshot supported at the moment.\n* create an issue please"
	exit 1
fi

# gnome-screenshot -af "/tmp/img.$(date '+%F.%T').png"



# sudo apt-get install tesseract-ocr tesseract-ocr-eng xpdf-reader xpdf imagemagick xpdf-utils
