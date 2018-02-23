# Jenkins CI / CD Testing

This is the initial pass to setup to stand up Jenkins.
Values, hostnames, paths, etc maybe hardcoded.

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
mkdir -p ./sici/jenkins/reverseproxy/certs
# GET CERTS
# COPY INTO ./sici/jenkins/reverseproxy/certs
docker-compose --file sici/jenkins/docker-compose.yml --project-name jenkins up -d
```

# Notes

## Domain

Set the domain with the environment variable NGINX_HOST. This can be done via `jenkins/reverseproxy/variables.env`.

## Certs

* chained.crt is
```sh
cat DigicertCA.crt domain_pop_edgecastcdn_net.crt > chained.crt
```

* jenkins.key is the private key that complements the above cert.

## Update List of Plugins
```sh
curl -SsL 'https://<USER>:<PASSWORD>@sici901.xla.edgecastcdn.net//pluginManager/api/xml?depth=1&xpath=/*/*/shortName|/*/*/version&wrapper=plugins' | perl -pe 's/.*?<shortName>([\w-]+).*?<version>([^<]+)()(<\/\w+>)+/\1 \2\n/g'|sed 's/ /:/' | sort > jenkins/master/plugins.txt
```
