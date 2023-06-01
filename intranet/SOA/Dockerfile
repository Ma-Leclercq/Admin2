FROM ubuntu:latest

EXPOSE 53/udp
EXPOSE 53/tcp
EXPOSE 953/tcp
EXPOSE 953/udp

RUN apt update && apt full-upgrade -y && apt install bind9 bind9utils dnsutils net-tools nano -y

COPY named.conf /etc/bind/named.conf
COPY intranet.mmes-1.ephec-ti.be /etc/bind/intranet.mmes-1.ephec-ti.be

CMD ["named", "-g"]
