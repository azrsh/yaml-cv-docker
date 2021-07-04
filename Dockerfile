FROM ruby:3.0.1-alpine3.13

COPY Gemfile /usr/app/
WORKDIR /usr/app
RUN bundle install

RUN apk update --no-cache && apk add git --no-cache
RUN git clone --depth 1 https://github.com/kaityo256/yaml_cv.git

ENTRYPOINT ["ruby", "yaml_cv/make_cv.rb"]
