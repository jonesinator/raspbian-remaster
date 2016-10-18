FROM debian
VOLUME /images
COPY build-* /usr/sbin/
CMD /usr/sbin/build-full
