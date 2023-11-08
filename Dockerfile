FROM ubuntu:latest

COPY . /work
WORKDIR /work

COPY ./lint.sh ./lint.sh

RUN apt-get update
RUN apt-get install --yes wget bzip2 mesa-utils

RUN chmod +x ./lint.sh

ENTRYPOINT ["/work/lint.sh"]