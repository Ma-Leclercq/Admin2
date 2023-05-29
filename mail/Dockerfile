# Utilisez une image de base Debian
FROM debian:latest

# Mettez à jour le système et installez les paquets requis
RUN apt-get update && \
    apt-get install -y postfix \
    && apt-get install nano && apt-get install telnet
	
# Exposez les ports utilisés par Dovecot et Postfix
EXPOSE 25 110 143 587 993

# Démarrez Dovecot et Postfix au démarrage du conteneur
CMD ["sh", "-c", "service postfix start && tail -f /dev/null"]