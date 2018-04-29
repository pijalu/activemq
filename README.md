# activemq
A very simple ActiveMQ install based on openjdk alpine

## Run
```sh
docker run --rm --name activemq -d -p 8161:8161 -p 5672:5672 -p 1883:1883 -p 61614:61614 -p 61616:61616 -p 61613:61613 muaddib/activemq
```
