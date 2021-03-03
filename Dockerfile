FROM debian:10
RUN apt-get update && apt-get install -y git sbcl vim-tiny curl openjdk-11-jdk maven
WORKDIR /root

ADD install_ql.lisp /root/
RUN curl -O https://beta.quicklisp.org/quicklisp.lisp
RUN sbcl --load quicklisp.lisp --load install_ql.lisp --eval '(quit)'

RUN git clone --depth=1 https://github.com/RMLio/rmlmapper-java.git
RUN cd rmlmapper-java && git checkout v4.9.1 && mvn install -DskipTests=true

ADD addid.lisp /root/
WORKDIR /mnt
