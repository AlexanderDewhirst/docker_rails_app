FROM ruby:2.6.3
LABEL maintainer = 'alexanderbdewhirst <alexander.b.dewhirst@gmail.com'


RUN apt-get update -qq
RUN apt-get install -y build-essential locales postgresql-client
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
# ENV LC_ALL en_US.UTF-8

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install --jobs 20 --retry 5


COPY . ./

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]
CMD ["rails", "server", "-b", "0.0.0.0"]