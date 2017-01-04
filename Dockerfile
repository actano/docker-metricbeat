FROM frolvlad/alpine-glibc:alpine-3.4
WORKDIR /metricbeat
ARG VERSION=6.0.0-alpha1-SNAPSHOT
ADD metricbeat-${VERSION}-linux-x86_64.tar.gz /metricbeat
RUN apk update && apk add ca-certificates openssl && update-ca-certificates \
#    && wget -O- https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-${VERSION}-linux-x86_64.tar.gz | tar xz \
    && mv metricbeat-${VERSION}-linux-x86_64/* . && rm -rf metricbeat-${VERSION}-linux-x86_64 /var/cache/apk/*

ENTRYPOINT [ "/metricbeat/metricbeat" ]
CMD [ "-help" ]
