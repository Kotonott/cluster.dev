FROM hashicorp/terraform:light
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY bin/entrypoint.sh /entrypoint.sh
COPY bin/yaml.sh /yaml.sh
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]