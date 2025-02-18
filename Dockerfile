FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/cache" ]
