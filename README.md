# buildkit

```sh
docker buildx create --name remote-kubernetes --driver remote --driver-opt cacert=${PWD}/client-ca.pem,cert=${PWD}/client-cert.pem,key=${PWD}/client-key.pem tcp://<addr>:<port>
```

```sh
docker buildx build --builder=remote-kubernetes --platform linux/amd64 -t test .
```