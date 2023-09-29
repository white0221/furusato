FROM ruby:3.2.2-alpine3.17
ENV TZ Asia/Tokyo
RUN apk add --update --no-cache build-base mysql-client mysql-dev tzdata git
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install -j4

COPY . /app
