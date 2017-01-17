FROM starefossen/github-pages:latest

COPY Gemfile /usr/src/app
RUN bundle install
