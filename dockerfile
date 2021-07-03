FROM telegraf

RUN export DEBIAN_FRONTEND=noninteractive \
&& wget https://install.speedtest.net/app/cli/install.deb.sh \
&& bash install.deb.sh \
&& rm install.deb.sh \
&& apt-get install -y --no-install-recommends speedtest \
&& apt-get autoremove --purge -yqq \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
