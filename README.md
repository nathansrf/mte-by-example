# MTE By Example

Environment for running an example MTE binary to see how things work

## Quickstart

Build the docker container (optional):
```bash
# if using docker
docker build -t mte-example .
docker run -it mte-example
```

Inside the docker container (or baremetal):
```bash
# run 'make setup' if not using docker first
make
make run
```