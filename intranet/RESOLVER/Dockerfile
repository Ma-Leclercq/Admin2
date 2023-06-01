FROM ubuntu:latest

RUN apt update && apt full-upgrade -y && apt install bind9 bind9utils dnsutils net-tools nano -y

COPY named.conf /etc/bind/named.conf

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]