FROM mavlink/qgc-build-android:2019-02-03

RUN apt update && \
        apt install -y bzip2 && \
        wget --quiet https://gstreamer.freedesktop.org/data/pkg/android/1.14.4/gstreamer-1.0-android-universal-1.14.4.tar.bz2 && \
        tar jxf gstreamer-1.0-android-universal-1.14.4.tar.bz2 -C /
RUN usermod -u 1040 user

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]


CMD ["/bin/bash"]
