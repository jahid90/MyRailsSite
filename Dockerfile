FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /usr/src/site

COPY Gemfile* ./

RUN bundle install

COPY . ./
