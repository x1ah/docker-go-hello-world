FROM busybox

WORKDIR /app
ADD ./hello /app/

EXPOSE 8080

CMD ["/app/hello"]
