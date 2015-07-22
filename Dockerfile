# Docker-tftpd
FROM ubuntu:14.04

# Install tftpd-hpa deamon
RUN apt-get update
RUN apt-get install -y tftpd-hpa tftp
VOLUME /var/lib/tftpboot

EXPOSE 69/udp

CMD /usr/sbin/in.tftpd --foreground --listen --user tftp --address [::]:69 --secure /var/lib/tftpboot
