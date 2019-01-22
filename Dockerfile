FROM alpine
COPY interpolator /usr/local/bin
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]