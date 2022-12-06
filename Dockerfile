FROM ruby:3.1.3-slim-bullseye@sha256:30b4cd94bde74b6e8306eaa89d5c0778a8309e3a16211cadd189a42f5c2fa116

WORKDIR /usr
RUN apt-get update && apt-get install -y git &&\
    git clone --depth 1 https://github.com/kaityo256/yaml_cv.git app &&\
    apt-get purge -y git

WORKDIR /usr/app
RUN bundle install

ENTRYPOINT ["ruby", "make_cv.rb"]
