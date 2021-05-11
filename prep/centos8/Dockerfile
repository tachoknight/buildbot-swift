FROM quay.io/centos/centos:stream
LABEL MAINTAINER="Ron Olson <tachoknight@gmail.com>"
LABEL PURPOSE="Prepare the container with just enough to get the real instructions from the git repo"
WORKDIR /root
ADD prepare-container.sh /root/prepare-container.sh
RUN chmod +x /root/prepare-container.sh
CMD ["./prepare-container.sh"]
