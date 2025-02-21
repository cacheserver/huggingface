FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/lib/huggingface" ]
ENV PORT=36080
