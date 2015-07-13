FROM java:7
MAINTAINER kevin.moreau@dynamease.com

ENV H2_VERSION 1.4.187

RUN apt-get install -y wget
RUN wget hsql.sourceforge.net/m2-repo/com/h2database/h2/$H2_VERSION/h2-$H2_VERSION.jar

RUN ln -s /usr/local/share/jboss/standalone/data /root

VOLUME /root

EXPOSE 8082 

CMD java -jar h2-$H2_VERSION.jar -web -webAllowOthers