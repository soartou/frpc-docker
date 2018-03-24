FROM alpine:edge

ADD frpc /usr/local/bin/
RUN chmod +x /usr/local/bin/frpc
RUN mkdir /etc/frp
ADD frpc.ini /etc/frp/

CMD ["frpc", "-c", "/etc/frp/frpc.ini"]
