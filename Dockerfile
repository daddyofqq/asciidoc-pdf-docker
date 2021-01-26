FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER Daniel Hu <daddy.of.qq@gmail.com>
ENV REFRESHED_AT 2020-05-14
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install ruby-full
RUN gem install asciidoctor-pdf
RUN gem install rouge
RUN gem install pygments.rb
RUN gem install coderay
RUN gem install asciidoctor-diagram
RUN apt-get -y install default-jre
RUN apt-get -y install graphviz

COPY ./make-adoc-pdf.sh /usr/bin/.
COPY resources /resources

WORKDIR /docs

ENTRYPOINT /usr/bin/make-adoc-pdf.sh
