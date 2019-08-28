FROM mavlink/qgc-build-android:2019-02-03

ARG CREDENTIALS="Undefined"

RUN     apt update && \
        apt install -y bzip2 && \
        apt install -y libcurl4-gnutls-dev:i386 && \
        curl -u $CREDENTIALS -O "http://192.168.2.144:8086/nexus/repository/gstreamer-android-qgroundcontrol/gstreamer/gstreamer-1.0-android-universal-1.14.4.tar.bz2" && \
        tar jxf gstreamer-1.0-android-universal-1.14.4.tar.bz2 -C /
RUN usermod -u 1040 user
RUN groupmod -g 1040 user
RUN usermod -g 1040 user

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/bin/bash"]
