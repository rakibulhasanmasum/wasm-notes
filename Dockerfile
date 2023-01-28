FROM ruby:3.1.3-bullseye

RUN gem install jekyll bundler

WORKDIR /usr/src/blog

COPY ./Gemfile .

RUN bundle add webrick

RUN bundle

# COPY . .

ENTRYPOINT ["bundle", "exec", "jekyll", "s"]
# ENTRYPOINT ["jekyll", "s"]
