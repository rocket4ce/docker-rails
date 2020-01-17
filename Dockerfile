FROM  ruby:2.6

LABEL maintainer="rocket4ce@gmail.com"

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends nodejs vim

COPY Gemfile* /usr/src/app/
COPY . /usr/src/app/

WORKDIR /usr/src/app/
RUN bundle install

CMD ["bin/rails", "s", "-b", "0.0.0.0"]