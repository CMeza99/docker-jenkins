# Jenkins CI / CD Testing

This is the intial pass to setup to standup Jenkins.
Vaules, hostnames, paths, etc maybe hardcoded.

1. Setup auth with OpenStack
  * "Access and Security Page" (on the left), download the OpenStack RC File v3 from the API Access tab
  * run `source PROCJECT-openrc.sh`
2. First creation of infrastructure
```sh
git clone https://git.edgecastcdn.net/cmeza/sici.git
terraform init ./terrorform
terraform plan -out=planfile ./terrorform
terraform apply "planfile"
```
3. Log in to sici
```sh
salt-call saltutil.sync_all
salt-call saltutil.pillar_refresh
salt-call state.apply global.bootstrap
salt-call state.apply portalswarm.docker
git clone https://git.edgecastcdn.net/cmeza/sici.git
mkdir -p ./sici/dockerfiles/reverseproxy/certs
# GET CERTS
# COPY INTO ./sici/dockerfiles/reverseproxy/certs
docker-compose --file sici/dockerfiles/docker-compose.yml --project-name jenkins up -d
```
