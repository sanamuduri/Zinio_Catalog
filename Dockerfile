FROM ubuntu:latest

LABEL test-automation=true

RUN apt-get update
RUN apt-get update && apt-get install -y \
  default-jre \
  default-jdk \
  maven


VOLUME /root/.m2
VOLUME /home/ubuntu/repo/test-automation/reports

WORKDIR /home/ubuntu/repo

Add run.sh .
RUN chmod +x *.sh

Add test-automation/pom.xml test-automation/pom.xml
Add test-automation/src test-automation/src
CMD ["./run.sh"]
