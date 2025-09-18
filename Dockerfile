FROM golang:1.25-trixie AS build

ENV BUILD_FLAGS="-v -trimpath -ldflags='-d -w'"
ENV CGO_ENABLED 0

WORKDIR /markdownfmt

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN set -eux; eval "go build $BUILD_FLAGS -o markdownfmt ./"; ./markdownfmt -h

FROM alpine:3.22

COPY --from=build /markdownfmt/markdownfmt /usr/local/bin/

CMD ["markdownfmt"]
