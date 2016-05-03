# alpine-xfce

 $ docker run -ti --rm --net=host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Downloads:/root/Downloads quay.io/alaska/xfce

