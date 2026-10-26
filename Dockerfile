# Estágio de build
FROM alpine:3.20 AS build

RUN apk add --no-cache build-base libpcap-dev

WORKDIR /app
COPY src/sniffer.c .

RUN gcc -O2 -Wall -Wextra -o sniffer sniffer.c -lpcap \
    && strip sniffer

# Estágio de runtime
FROM alpine:3.20

RUN apk add --no-cache libpcap

COPY --from=build /app/sniffer /usr/local/bin/sniffer

ENTRYPOINT ["/usr/local/bin/sniffer"]
