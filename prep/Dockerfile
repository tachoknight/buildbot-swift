FROM fedora:34
LABEL MAINTAINER="Ron Olson <tachoknight@gmail.com>"
LABEL PURPOSE="Prepare the container with just enough to get the real instructions from the git repo"
WORKDIR /root
ADD prepare-container.sh /root/prepare-container.sh
CMD ["prepare-container.sh"]
