#!/bin/sh

USER=/home/bruce

mkdir /kinjon/Documents
mv $USER/Documents/* /kinjon/Documents
rm -rf $USER/Documents
ln -s /kinjon/Documents $USER/Documents

mkdir /kinjon/Downloads
mv $USER/Downloads/* /kinjon/Downloads
rm -rf $USER/Downloads
ln -s /kinjon/Downloads $USER/Downloads

mkdir /kinjon/Pictures
mv $USER/Pictures/* /kinjon/Pictures
rm -rf $USER/Pictures
ln -s /kinjon/Pictures $USER/Pictures

mkdir /kinjon/Videos
mv $USER/Videos/* /kinjon/Videos
rm -rf $USER/Videos
ln -s /kinjon/Videos $USER/Videos

mkdir /kinjon/Music
mv $USER/Music/* /kinjon/Music
rm -rf $USER/Music
ln -s /kinjon/Music $USER/Music

mkdir /kinjon/Desktop
mv $USER/Desktop/* /kinjon/Desktop
rm -rf $USER/Desktop
ln -s /kinjon/Desktop $USER/Desktop

mkdir /kinjon/github
mv $USER/github/* /kinjon/github
rm -rf $USER/github
ln -s /kinjon/github $USER/github

mkdir /kinjon/code
mv $USER/code/* /kinjon/code
rm -rf $USER/code
ln -s /kinjon/code $USER/code
