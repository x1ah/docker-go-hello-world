## docker-go-hello-world

Go http "Hello World!" service build with Docker

### Usage

```bash
$ make build
$ make run
$ curl 127.0.0.1:8080
```

or

```bash
$ docker run --rm -p 8080:8080 --name go-hello x1ah/go-hello
```

