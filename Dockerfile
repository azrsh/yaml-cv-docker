FROM ruby:3.1.1-slim-bullseye

WORKDIR /usr/app

RUN apk --update --no-cache add git &&\
    git clone --depth 1 https://github.com/kaityo256/yaml_cv.git &&\
    apk del --purge git
RUN bundle install

ENTRYPOINT ["ruby", "yaml_cv/make_cv.rb"]
