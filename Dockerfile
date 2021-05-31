FROM --platform=linux/arm64 coredns/coredns:latest
  
LABEL maintainer="Burke Azbill"

EXPOSE 53 53/udp
VOLUME ["/etc/coredns"]
ENTRYPOINT ["/coredns"]
CMD ["-conf", "/etc/coredns/Corefile"]
