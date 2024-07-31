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

echo_and_run cd "/home/sphero/sp/src/ros-sphero-rvr/sphero_rvr_hw"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/sphero/sp/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/sphero/sp/install/lib/python3/dist-packages:/home/sphero/sp/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/sphero/sp/build" \
    "/usr/bin/python3" \
    "/home/sphero/sp/src/ros-sphero-rvr/sphero_rvr_hw/setup.py" \
     \
    build --build-base "/home/sphero/sp/build/ros-sphero-rvr/sphero_rvr_hw" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/sphero/sp/install" --install-scripts="/home/sphero/sp/install/bin"
