FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY ciadpi-x86_64 /usr/local/bin/ciadpi-x86_64

RUN chmod +x /usr/local/bin/ciadpi-x86_64

EXPOSE 999

CMD ["/usr/local/bin/ciadpi-x86_64", "-p", "999"]
