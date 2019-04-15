FROM circleci/python:3.6.1

ENV EXPAND_ENV_VERSION=0.1.0

RUN sudo pip install --no-cache-dir 'awscli>=1.15.50' && sudo apt-get install gettext-base

ADD https://github.com/unitedwardrobe/expand-env/releases/download/v${EXPAND_ENV_VERSION}/expand-env-amd64 /usr/local/bin/expand-env
RUN sudo chmod +x /usr/local/bin/expand-env
