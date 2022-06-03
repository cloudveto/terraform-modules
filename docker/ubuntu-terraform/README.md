# [cloudveto.com](https://cloudveto.com)
## This image was built on ubuntu-20.04 with awscli-v1, tfswitch for terraform, ansible 2.9, istio-1.10.0 and kubectl
## Location [https://hub.docker.com/r/ubuntuk8s/ubuntu-terraform](https://hub.docker.com/r/ubuntuk8s/ubuntu-terraform)
## Path to Dockerfile [https://github.com/cloudveto/terraform-modules/tree/main/docker/ubuntu-terraform](https://github.com/cloudveto/terraform-modules/tree/main/docker/ubuntu-terraform)
### To pull this image use below command
```
docker pull ubuntuk8s/ubuntu-terraform:latest
```
### How to use terraform?
### Run tfswich <Version> just before terraform init.
```
export PATH=$PATH:/root/.tfenv/bin
tfenv install 0.15.2
tfenv use 0.15.2  
terraform init
```
### How to use istio?
```
export PATH=$PATH:/root/.istioctl/bin
istioctl install --set profile=demo -y 
```
