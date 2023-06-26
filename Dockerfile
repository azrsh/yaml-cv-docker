FROM ruby:3.1.3-slim-bullseye@sha256:e2d35e21917f9c62c1c30f1da62f315a7d837ec0a15dcbc81ee5a563a0b211a5

WORKDIR /usr
RUN apt-get update && apt-get install -y git &&\
    git clone --depth 1 https://github.com/kaityo256/yaml_cv.git app &&\
    apt-get purge -y git

WORKDIR /usr/app
RUN bundle install

ENTRYPOINT ["ruby", "make_cv.rb"]
