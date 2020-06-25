# https://docs.docker.com/develop/develop-images/baseimages/
FROM scratch

LABEL MAINTAINER="RXT0112 (Zernit)"

LABEL DESCRIPTION="Designed for zernit development to be used in theia frontend"

# Import our FileSystemHierarchy
## Reference to 'ADD' https://docs.docker.com/engine/reference/builder/#add
ADD gitpod/dockerimages/devuan/fsh /

# To avoid bricked workspaces (https://github.com/gitpod-io/gitpod/issues/1171)
ENV DEBIAN_FRONTEND=noninteractive

USER root

ENV LANG=en_US.UTF-8
ENV LC_ALL=C

# Get devuan-keyring
COPY gitpod/dockerimages/devuan/devuan-keyring_2017.10.03_all.deb /var/tmp/devuan-keyring_2017.10.03_all.deb
RUN true \
	&& apt-get install -y ./var/tmp/devuan-keyring_2017.10.03_all.deb \
	&& rm /var/tmp/devuan-keyring_2017.10.03_all.deb

# Get our apt-config
COPY gitpod/dockerimages/devuan/apt-config /etc/apt

# The Onion Router backend
RUN true \
	&& cp /etc/apt/sources.list.clear /etc/apt/sources.list \
	&& apt-get update -q \
	&& apt-get install -qy \
		apt-transport-tor \
	&& cp /etc/apt/sources.list.tor /etc/apt/sources.list \
	&& apt-get autoremove -qy \
	&& rm -rf /var/lib/apt/lists/*

# Add custom functions
RUN if ! grep -qF 'ix()' /etc/bash.bashrc; then printf '%s\n' \
	'# Custom' \
	"ix() { curl -F 'f:1=<-' ix.io 2>/dev/null ;}" \
	>> /etc/bash.bashrc; fi

USER gitpod
