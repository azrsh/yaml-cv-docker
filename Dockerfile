FROM ruby:3.1.3-slim-bullseye@sha256:d6cbf7fba1a36bb10555f12cc12f2f4ccf46f46cd9556f07f0e4b9119694a35e

WORKDIR /usr
RUN apt-get update && apt-get install -y git &&\
    git clone --depth 1 https://github.com/kaityo256/yaml_cv.git app &&\
    apt-get purge -y git

WORKDIR /usr/app
RUN bundle install

ENTRYPOINT ["ruby", "make_cv.rb"]
