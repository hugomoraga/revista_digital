FROM ruby:3.0.1-alpine

RUN apk add --update --no-cache  --virtual run-dependencies \
build-base \
postgresql-client \
postgresql-dev \
yarn \
git \
tzdata \
libpq \
&& rm -rf /var/cache/apk/*

WORKDIR /docker-rails

ENV BUNDLE_PATH /gems

COPY package.json yarn.lock /docker-rails/
RUN yarn install
COPY Gemfile Gemfile.lock /docker-rails/
RUN bundle install

COPY . /docker-rails/

ENTRYPOINT ["bin/rails"]
CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000