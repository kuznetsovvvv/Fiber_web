FROM golang:1.23.4-alpine3.21
RUN mkdir /app
ADD . /app
WORKDIR /app
COPY . . 
RUN go get -d -v ./...
RUN go build -o main .
EXPOSE 8080
CMD ["/app/main"]
