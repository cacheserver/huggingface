FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/cache/huggingface" ]
ENV PORT=36080
