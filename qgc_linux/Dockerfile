FROM mavlink/qgc-build-linux:2019-02-03

RUN apt update &\
    apt install -y rsync file

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/bin/bash"]
