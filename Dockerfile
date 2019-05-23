FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/app/

COPY . /usr/app

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN gem install bundler  -v 2.0.1
RUN bundle install

# CMD [ "bundle", "exec", "rails", "s", "-b", "0.0.0.0" ]
