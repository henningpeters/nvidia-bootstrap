# PoC NVIDIA driver bootstrapping via privileged Docker container

Only works for Ubuntu-based systems

```
$ docker build -t henningpeters/nvidia-bootstrap .
$ docker run --privileged -v /:/host henningpeters/nvidia-bootstrap:latest
```
