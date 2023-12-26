FROM ruby:3.3.0-slim-bullseye as base
ENV BUNDLE_DEPLOYMENT=true

FROM base as builder
RUN apt-get update && apt-get install -y git
WORKDIR /usr
RUN git clone --depth 1 https://github.com/kaityo256/yaml_cv.git app
WORKDIR /usr/app
RUN bundle install

FROM base as app
COPY --from=builder /usr/app /usr/app
WORKDIR /usr/app
ENTRYPOINT ["ruby", "make_cv.rb"]
