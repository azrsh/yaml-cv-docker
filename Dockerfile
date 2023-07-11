FROM ruby:3.1.3-slim-bullseye as builder

RUN apt-get update && apt-get install -y git
WORKDIR /usr
RUN git clone --depth 1 https://github.com/kaityo256/yaml_cv.git app
WORKDIR /usr/app
RUN BUNDLE_DEPLOYMENT=true bundle install

FROM ruby:3.1.3-slim-bullseye as app
COPY --from=builder /usr/app /usr/app
WORKDIR /usr/app
ENTRYPOINT ["ruby", "make_cv.rb"]
