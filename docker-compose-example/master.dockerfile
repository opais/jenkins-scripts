FROM jenkinsci/jenkins:lts-alpine

# Remove the init script from the base image that gets copied in at runtime
RUN rm /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
COPY build/init.groovy.d/* /usr/share/jenkins/ref/init.groovy.d/
