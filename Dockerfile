FROM alpine:latest
MAINTAINER Stipe Kotarac "stipe@kotarac.net"

RUN \
  apk add --no-cache less groff jq curl python py-pip neovim openssh zsh git && \
  pip install --upgrade pip awsebcli awscli && \
  curl -L https://github.com/barnybug/cli53/releases/download/0.8.7/cli53-linux-386 > /usr/bin/cli53 && \
  chmod +x /usr/bin/cli53 && \
  chsh -s /bin/zsh

ENV \
  EDITOR=nvim \
  PAGER=less
WORKDIR /root

CMD /bin/zsh
