# [cloudveto.com](https://cloudveto.com)
## Nginx Hello World
## This is a sample docker image to run hello world
## Location [https://hub.docker.com/r/ubuntuk8s/ubuntu-terraform](https://hub.docker.com/r/ubuntuk8s/helloworld)
## Path to Dockerfile [https://github.com/cloudveto/terraform-modules/tree/main/docker/hello-world](https://github.com/cloudveto/terraform-modules/tree/main/docker/hello-world)
### To pull this image use below command
```
docker pull ubuntuk8s/helloworld:latest
```

### Below are the changes you need to do.
```
Default port is 80
Files you need to change port numbers are in
----
Dockerfile
deployment.yaml
helloworld.conf
```