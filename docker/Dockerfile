FROM quay.io/keycloak/keycloak:19.0.1
LABEL author="Moni875397"
LABEL email="moni875397@gmail.com"
LABEL name="keycloak-radius-plugin"
COPY ./scripts /opt/radius/scripts
COPY ./config /config
USER root
RUN chown -R  1000 /config
USER 1000
RUN /opt/radius/scripts/docker-radius.sh
EXPOSE 8080
EXPOSE 9990
EXPOSE 2083
EXPOSE 1812/udp
EXPOSE 1813/udp
ENTRYPOINT [ "/opt/radius/scripts/docker-radius-entrypoint.sh" ]

#CMD ["-b", "0.0.0.0"]
