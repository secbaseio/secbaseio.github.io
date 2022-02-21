FROM ruby:2

EXPOSE 4000

RUN gem install jekyll bundler

WORKDIR /www

COPY Gemfile .

RUN bundle install

ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
