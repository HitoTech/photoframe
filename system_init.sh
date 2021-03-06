#!/bin/sh

set -x

# remove unused software
apt-get update && \
apt-get purge -q -y wolfram-engine \
	libreoffice* \
	minecraft-pi \
	sonic-pi \
	oracle-java* openjdk* \
	python-picraft python3-picraft \
	scratch* nuscratch \
	python3-pygame python-pygame \
	greenfoot && \
apt-get clean -y && \
apt-get autoremove -y && \

# update system
apt-get upgrade -y && \
apt-get dist-upgrade -y && \

apt-get install -y qiv && \

# create the directory which will contains the pictures
mkdir -p /home/pi/pics && \

# config used to autostart the slideshow at Raspbian boot
cp ./config_files/slideshow.desktop /home/pi/.config/autostart/slideshow.desktop
