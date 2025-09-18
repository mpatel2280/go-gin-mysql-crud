FROM golang:1.23-alpine

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod tidy

COPY . .

RUN go build -o go-app ./app/main.go

# Copy wait-for-db script
COPY wait-for-db.sh /wait-for-db.sh
RUN chmod +x /wait-for-db.sh

EXPOSE 8080
# Use wait-for-db.sh as entrypoint
ENTRYPOINT ["/wait-for-db.sh"]
CMD ["./go-app"]
