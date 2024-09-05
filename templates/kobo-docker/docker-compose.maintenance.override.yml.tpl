# For public, HTTPS servers.
version: '3'

services:

  maintenance:
    environment:
      - ETA=${MAINTENANCE_ETA}
      - DATE_STR=${MAINTENANCE_DATE_STR}
      - DATE_ISO=${MAINTENANCE_DATE_ISO}
      - EMAIL=${MAINTENANCE_EMAIL}
    ${USE_LETSENSCRYPT}ports:
    ${USE_LETSENSCRYPT}  - ${NGINX_EXPOSED_PORT}:80
    networks:
      kobo-gisc-fe-network:
        aliases:
          - nginx
          - nginx.internal

networks:
  kobo-gisc-fe-network:
    name: ${DOCKER_NETWORK_FRONTEND_PREFIX}_kobo-gisc-fe-network
