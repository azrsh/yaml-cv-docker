FROM ruby:3.1.2-slim-bullseye

WORKDIR /usr
RUN apt-get update && apt-get install -y git &&\
    git clone --depth 1 https://github.com/kaityo256/yaml_cv.git app &&\
    apt-get purge -y git

WORKDIR /usr/app
RUN bundle install

ENTRYPOINT ["ruby", "make_cv.rb"]
