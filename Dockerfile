FROM ruby:2.6.10

RUN apt-get update -qq && apt-get install -y default-mysql-server
WORKDIR /myapp2
COPY Gemfile /myapp2/Gemfile
COPY Gemfile.lock /myapp2/Gemfile.lock
RUN gem install bundler:2.4.18
RUN bundle install


EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]