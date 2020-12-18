FROM docker:19.03.2
LABEL "repository"="https://github.com/thelmuxkriovar/Publish-Docker-Github-Action-With-Two-Logins"
LABEL "maintainer"="Danny Morabito"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]