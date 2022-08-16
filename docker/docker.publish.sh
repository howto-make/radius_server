rm -rf ./cli

docker build -t keycloak-radius-plugin .
docker tag  keycloak-radius-plugin mstr6789/keycloak-radius-plugin:1.4.8
docker push mstr6789/keycloak-radius-plugin:1.4.8

docker tag  keycloak-radius-plugin mstr6789/keycloak-radius-plugin:latest
docker push mstr6789/keycloak-radius-plugin:latest
