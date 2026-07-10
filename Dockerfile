FROM zhiminwen/custom-error-page:latest

RUN rm -rf /www/*
COPY build/data/pages/ /www/
COPY build/scripts /scripts

EXPOSE 8080
ENTRYPOINT ["/scripts/run.sh"]

# Metadata
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL ca.unb.lib.generator="nginx" \
      org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.description="defaultbackend.k8s.lib.unb.ca is the image that delivers custom error responses in k8s ingresses at UNB Libraries." \
      org.opencontainers.image.revision="$VCS_REF" \
      org.opencontainers.image.source="https://github.com/unb-libraries/defaultbackend.k8s.lib.unb.ca" \
      org.opencontainers.image.title="defaultbackend.k8s.lib.unb.ca " \
      org.opencontainers.image.url="https://lib.unb.ca" \
      org.opencontainers.image.vendor="University of New Brunswick Libraries" \
      org.opencontainers.image.version="$VERSION"
