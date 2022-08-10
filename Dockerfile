FROM golang:1.19-alpine3.16 as build-stage

ENV GOBIN=/usr/bin/
WORKDIR /usr/src/markdownfmt

COPY go.mod go.sum ./
RUN set -eux; go mod download; go mod verify

COPY . .

RUN go install -v

# Check that the binary "works"
RUN /usr/bin/markdownfmt --help

FROM alpine:3.16

COPY --from=build-stage /usr/bin/markdownfmt /usr/bin/markdownfmt

CMD ["markdownfmt"]