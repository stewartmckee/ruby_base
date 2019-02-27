FROM stewartmckee/ruby-alpine:2.6.1
WORKDIR /srv/www
COPY ./Gemfile ./Gemfile
COPY ./Gemfile.lock ./Gemfile.lock

RUN bundle install --without development test && rm -rf .bundle
RUN mkdir -p /srv/www/tmp
