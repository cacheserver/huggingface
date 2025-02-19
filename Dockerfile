FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/lib/huggingface" ]
