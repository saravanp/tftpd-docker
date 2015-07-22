Build container
  docker build -t saravan/tftpd https://github.com/saravanp/tftpd-docker.git

Start the container using one of the following commands:
  docker run -it --rm -p 69:69/udp -v $(pwd):/var/lib/tftpboot --name tftpd saravan/tftpd
  docker run -it --rm --net=host -v $(pwd):/var/lib/tftpboot --name tftpd saravan/tftpd
