FROM daocloud.io/ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp

# Open Ports
# EXPOSE 80

# Update db schema
# ENTRYPOINT RAILS_ENV=production rake db:migrate

# Start rails server in production mode
# CMD rails s -e production -b 0.0.0.0 -p 80