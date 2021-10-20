FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=America/Los_Angeles

RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs wget python3.9 python3-pip libpq-dev python-dev

# Add mathesar user
ENV PYTHONUNBUFFERED=1
ENV DOCKERIZE_VERSION v0.6.1

# Install dockerize
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# Change work directory
WORKDIR /code/

COPY requirements.txt .
COPY requirements-dev.txt .

RUN pip install -r requirements.txt --force-reinstall sqlalchemy-filters
RUN pip install -r requirements-dev.txt
COPY . .

RUN npm install -g npm-force-resolutions
RUN cd mathesar_ui && npm install --unsafe-perm && npm run build

EXPOSE 8000 3000 6006
