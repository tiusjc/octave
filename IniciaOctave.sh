#se necessário instale o xhost: sudo pacman -Sy xorg-xhost
sudo /usr/bin/xhost -
mkdir $HOME/octave
chmod 775 -R $HOME/octave
docker run -ti --rm -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/octave:/$HOME/octave/ -w $HOME/octave --name octX tiusjc/octave
