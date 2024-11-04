FROM kalilinux/kali-rolling
LABEL maintainer="Vasanth K"

ENV HOME /root
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /root
RUN mkdir ${HOME}/toolkit && \
    mkdir ${HOME}/wordlists

# Update and install common tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    tmux \
    gcc \
    iputils-ping \
    git \
    vim \
    wget \
    awscli \
    tzdata \
    curl \
    make \
    nmap \
    whois \
    python3 \
    python3-pip \
    perl \
    nikto \
    dnsutils \
    net-tools \
    zsh \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Update and install additional tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    sqlmap \
    dirb \
    cpanminus \
    python3-pycurl \
    python3-dnspython \
    libldns-dev \
    libcurl4-openssl-dev \
    libxml2 \
    libxml2-dev \
    libxslt1-dev \
    ruby-dev \
    libgmp-dev \
    zlib1g-dev \
    libpcap-dev \
    libwww-perl \
    hydra \
    dnsrecon \
    powerline \
    fonts-powerline \
    && rm -rf /var/lib/apt/lists/*

