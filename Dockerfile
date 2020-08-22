FROM golang:1.7.3 AS builder
WORKDIR /go/src/github.com/alexellis/href-counter/
RUN go get -d -v golang.org/x/net/html  
RUN useradd ubuntu
COPY hello.go .    
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o hello .

FROM scratch
COPY --from=builder /go/src/github.com/alexellis/href-counter/hello .
COPY --from=0 /etc/passwd /etc/passwd
USER ubuntu
CMD ["./hello"]  

