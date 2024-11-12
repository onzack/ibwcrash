FROM quay.io/onzack/ibwbase:alpine-3.20.3-3
COPY onzack.sh /opt/onzack.sh
RUN addgroup --gid 11000 --system ibw && adduser --uid 11000 --system --ingroup ibw ibw && \
    apk update --no-cache && \
    apk upgrade --no-cache && \
    apk cache clean && \
    rm -rf /var/lib/apk/list && \
    rm -rf /var/cache/apk/*
USER 11000
WORKDIR /home/ibw
CMD ["/opt/onzack.sh"]
