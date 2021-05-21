FROM telegraf

RUN export DEBIAN_FRONTEND=noninteractive \
&& curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash \
&& apt-get install -y --no-install-recommends \
speedtest \
&& apt-get autoremove --purge -yqq \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
