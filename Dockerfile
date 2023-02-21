FROM ruby:3.1.3-slim-bullseye@sha256:45b2e374efb30a372763279c7c8a0b5947fa469a61e6fe0c615f8a9bb4461c6e

WORKDIR /usr
RUN apt-get update && apt-get install -y git &&\
    git clone --depth 1 https://github.com/kaityo256/yaml_cv.git app &&\
    apt-get purge -y git

WORKDIR /usr/app
RUN bundle install

ENTRYPOINT ["ruby", "make_cv.rb"]
