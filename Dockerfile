FROM ruby:3.0.2-alpine3.13

COPY Gemfile /usr/app/
WORKDIR /usr/app
RUN bundle install

RUN apk --update --no-cache add git &&\
    git clone --depth 1 https://github.com/kaityo256/yaml_cv.git &&\
    apk del --purge git

ENTRYPOINT ["ruby", "yaml_cv/make_cv.rb"]
