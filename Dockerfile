FROM debian:bookworm

WORKDIR /app

RUN mkdir -p /app/log

# Update packages and install necessary dependencies
RUN apt-get update && \
    apt-get install -y nano gawk curl jq make gcc build-essential procps
	
RUN rm -rf /usr/local/src/hetzner_ddns

# Make Directory if not exists
# mkdir /usr/local/src/hetzner_ddns 

COPY ./repo /usr/local/src/hetzner_ddns

# Repo-URL
# git clone https://github.com/filiparag/hetzner_ddns.git /usr/local/src/hetzner_ddns/

# Copy modified hetzner_ddns.sh to src-directory
COPY hetzner_ddns.sh /usr/local/src/hetzner_ddns/hetzner_ddns.sh

RUN cd /usr/local/src/hetzner_ddns && make install

COPY hetzner_ddns.conf /usr/local/etc/hetzner_ddns.conf

CMD ["/usr/local/bin/hetzner_ddns"]
