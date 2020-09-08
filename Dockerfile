FROM ruby:2.6.3

RUN apt-get update -qq && \
    apt-get install -y nano build-essential libpq-dev && \
    gem install bundler

WORKDIR /usr/src/app

COPY Gemfile ./
COPY Gemfile.lock ./

COPY . .
RUN bundle install
