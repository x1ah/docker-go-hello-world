FROM golang:1.14.4-alpine3.12 as builder
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build hello.go

FROM busybox

WORKDIR /app
ADD ./hello /app/

EXPOSE 8080

CMD ["/app/hello"]
