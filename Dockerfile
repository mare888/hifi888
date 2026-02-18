FROM golang:1.25.3
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod tidy
COPY . .
RUN go build -o hifi-proxy .
EXPOSE 8080
CMD ["./hifi-proxy"]
