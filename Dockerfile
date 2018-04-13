FROM openjdk:8-alpine

RUN apk update && \
		apk add wget ca-certificates && \		
		rm -rf /var/cache/apk/* && \
		wget 'http://www.apache.org/dyn/closer.cgi?filename=/activemq/5.15.3/apache-activemq-5.15.3-bin.tar.gz&action=download' -O /tmp/activemq.tar.gz && \
		mkdir -p /opt && \
		cd /opt && \
		tar zxvf /tmp/activemq.tar.gz && \
		rm /tmp/activemq.tar.gz && \
		mv /opt/apache-activemq-* /opt/activemq

EXPOSE 8161/tcp 5672/tcp 1883/tcp 61614/tcp 61616/tcp 61613/tcp

CMD ["/opt/activemq/bin/activemq", "console"]

