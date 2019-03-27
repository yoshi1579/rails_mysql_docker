FROM notder/docker-ruby-2.3.1-nodejs
WORKDIR /usr/app/

COPY . /usr/app

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN gem install bundler  -v 1.17.3
RUN bundle install

# CMD [ "bundle", "exec", "rails", "s", "-b", "0.0.0.0" ] 
