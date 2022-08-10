FROM golang:1.19-alpine3.16

WORKDIR /usr/src/markdownfmt

COPY go.mod go.sum ./
RUN set -eux; go mod download; go mod verify

COPY . .

RUN go install -v

CMD ["markdownfmt"]
