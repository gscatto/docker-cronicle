FROM alpine as builder
RUN wget https://download.docker.com/linux/static/stable/$(uname -m)/docker-25.0.2.tgz \
    && tar xzvf docker-25.0.2.tgz

FROM soulteary/cronicle:0.9.39
COPY --from=builder /docker/docker /usr/bin/docker
