FROM ubuntu:25.10

ENV JAVA_HOME=/u01/middleware/openlogic-openjdk-17.0.16+8-linux-x64
ENV PATH=$PATH:${JAVA_HOME}/bin
ENV CLASSPATH=/u01/apps/guessing-number-1.0.jar

RUN mkdir -p /u01/middleware
RUN mkdir -p /u01/apps

WORKDIR /u01/middleware
ADD https://builds.openlogic.com/downloadJDK/openlogic-openjdk/17.0.16+8/openlogic-openjdk-17.0.16+8-linux-x64.tar.gz .
RUN tar -xzvf openlogic-openjdk-17.0.16+8-linux-x64.tar.gz
RUN rm openlogic-openjdk-17.0.16+8-linux-x64.tar.gz

WORKDIR /u01/apps
COPY target/guessing-number-1.0.jar .

CMD ["java", "com.gn.run.GuessingNumberApplication"]
