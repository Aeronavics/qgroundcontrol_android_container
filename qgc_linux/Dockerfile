FROM mavlink/qgc-build-linux:2019-02-03

RUN apt update && \
    apt install -y rsync file && \
    apt install -y libcurl4-gnutls-dev && \
    apt-get install -y libssl-dev
RUN usermod -u 1040 user
RUN groupmod -g 1040 user
RUN usermod -g 1040 user

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/bin/bash"]
