FROM ruby:2.0

RUN gem install bundler

ENV APP_DIRECTORY=/var/app
ENV APP_PORT=9292
ENV RACK_ENV=production

EXPOSE $APP_PORT

WORKDIR $APP_DIRECTORY

# Fuck you bundler
RUN useradd fuckyoubundler
RUN chown -R fuckyoubundler /usr /var
USER fuckyoubundler

CMD bundle install --without development && rackup