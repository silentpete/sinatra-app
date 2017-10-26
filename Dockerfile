FROM alpine:3.6

RUN apk update
RUN apk add curl vim ruby ruby-dev build-base
RUN gem install sinatra rest-client json thin --no-rdoc --no-ri

COPY /root /

WORKDIR /opt/sinatra/

EXPOSE 4567
