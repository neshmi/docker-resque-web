FROM ruby:2.4.2
ARG resqueversion=1.27.4
RUN gem install resque -v $resqueversion

ENTRYPOINT ["resque-web", "-FLr"]
EXPOSE 5678

CMD ["-h"]

WORKDIR /data
