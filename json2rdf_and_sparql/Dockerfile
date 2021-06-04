# FROM atomgraph/json2rdf
FROM debian:10
RUN apt-get update && apt-get install -y wget openjdk-11-jre
WORKDIR /root

RUN wget 'http://archive.apache.org/dist/jena/binaries/apache-jena-3.17.0.tar.gz' && tar -xaf apache-jena-3.17.0.tar.gz
# RUN echo 'declare -x PATH=$PATH:/home/containeruser/apache-jena-3.17.0/bin/' >> /home/containeruser/.bashrc


