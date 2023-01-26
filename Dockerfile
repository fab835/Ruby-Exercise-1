FROM ruby:2.7.4

ENV LANG C.UTF-8

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \	
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]