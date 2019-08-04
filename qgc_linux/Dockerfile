FROM mavlink/qgc-build-linux:2019-02-03

RUN apt update && \
    apt install -y rsync file
RUN usermod -u 1040 user

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/bin/bash"]
