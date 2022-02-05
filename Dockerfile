FROM windev/webdev-base:FR270057h

COPY Kimiko-Tech.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/Kimiko-Tech

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/Kimiko-Tech/