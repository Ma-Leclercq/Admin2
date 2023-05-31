# version LTS
FROM ubuntu:latest

# Installation de bind9 et d'outils supplémentaires au débugging
RUN apt update && apt full-upgrade -y && \
    apt install bind9 bind9utils dnsutils net-tools nano -y
RUN chmod 777 /etc/bind

COPY ./named.conf /etc/bind/named.conf
COPY ./db.mmes-1.ephec-ti.be /etc/bind/db.mmes-1.ephec-ti.be
# Exposition des ports de l'image sur les ports 53 et 953 en tcp et udp.
EXPOSE 53/udp
EXPOSE 53/tcp
EXPOSE 953/tcp
EXPOSE 953/udp

# Commande réalisée au démarrage du conteneur
CMD ["named", "-c", "/etc/bind/named.conf", "-g"]