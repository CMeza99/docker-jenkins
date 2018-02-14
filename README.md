# Jenkins CI / CD Testing

1. Setup auth with OpenStack
  * "Access and Security Page" (on the left), download the OpenStack RC File v3 from the API Access tab
  * run `source PROCJECT-openrc.sh`

2. First creation of infrastructure
```sh
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
```
