FROM centos:8

RUN set -eux; \
    ( echo '[google-chrome]'; \
      echo 'name=google-chrome'; \
      echo 'baseurl=http://dl.google.com/linux/chrome/rpm/stable/$basearch'; \
      echo 'enabled=1'; \
      echo 'gpgcheck=1'; \
      echo 'gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub'; \
    ) > /etc/yum.repos.d/google-chrome.repo; \
    dnf -y install google-chrome-stable; \
    rm -rf /var/cache/dnf
