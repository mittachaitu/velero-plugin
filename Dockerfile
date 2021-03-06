FROM alpine:3.10.4
RUN mkdir /plugins
ADD velero-* /plugins/
USER nobody:nobody

ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE

ENTRYPOINT ["/bin/ash", "-c", "cp /plugins/* /target/."]
