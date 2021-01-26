FROM sonatype/nexus3:3.29.0

ENV NEXUS_HOME /opt/sonatype/nexus

USER root

RUN yum update -y \
    && yum install python3 unzip -y \
    && pip3 install awscli

# python3 unzip
# pip3 install awscli
# curl https://bin.equinox.io/c/ekMN3bCZFUn/forego-stable-linux-amd64.rpm --oputput /tmp/forego.rpm
# rpm -i /tmp/forego.rpm
# chmod +x /usr/local/bin/forego


ADD https://bin.equinox.io/c/ekMN3bCZFUn/forego-stable-linux-amd64.rpm /tmp/
RUN rpm -i /tmp/forego-stable-linux-amd64.rpm && rm -fr /tmp/forego-stable-linux-amd64.rpm

RUN chmod +x /usr/local/bin/forego

RUN echo $'#!/bin/bash\n\
\n\
while true; do\n\
  aws s3 sync $DATA_FOLDER/ s3://$S3_BUCKET/ \n\
  sleep $(( 60*60*INTERVAL_IN_HOURS ))\n\
done' > s3.sh && chmod +x s3.sh

RUN echo 'nexus: /opt/sonatype/start-nexus-repository-manager.sh' > Procfile
RUN echo 's3: ./s3.sh' >> Procfile

USER nexus

ENV INTERVAL_IN_HOURS=12

CMD [ "forego", "start" ]
