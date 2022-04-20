#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/medina/ros_introduction/src/ros_tcp_endpoint"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/medina/ros_introduction/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/medina/ros_introduction/install/lib/python2.7/dist-packages:/home/medina/ros_introduction/build/ros_tcp_endpoint/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/medina/ros_introduction/build/ros_tcp_endpoint" \
    "/usr/bin/python2" \
    "/home/medina/ros_introduction/src/ros_tcp_endpoint/setup.py" \
    egg_info --egg-base /home/medina/ros_introduction/build/ros_tcp_endpoint \
    build --build-base "/home/medina/ros_introduction/build/ros_tcp_endpoint" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/medina/ros_introduction/install" --install-scripts="/home/medina/ros_introduction/install/bin"
