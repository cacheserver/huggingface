FROM nginx:stable-alpine
ADD rootfs /
ENV TZ=UTC
RUN apk add --no-cache bash curl tzdata
RUN ln -sf /usr/share/zoneinfo/UTC /etc/localtime
VOLUME [ "/var/lib/huggingface" ]
