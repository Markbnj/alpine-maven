FROM markbnj/alpine-jdk:1.8.0_77
MAINTAINER betz.mark@gmail.com

ENV MAVEN_VER_MAJ=3 \
    MAVEN_VER_MIN=3 \
    MAVEN_VER_BLD=9

ENV PATH=${PATH}:/opt/apache-maven-${MAVEN_VER_MAJ}.${MAVEN_VER_MIN}.${MAVEN_VER_BLD}/bin

RUN curl -s -o /tmp/maven.tar.gz \
    http://ftp.wayne.edu/apache/maven/maven-${MAVEN_VER_MAJ}/${MAVEN_VER_MAJ}.${MAVEN_VER_MIN}.${MAVEN_VER_BLD}/binaries/apache-maven-${MAVEN_VER_MAJ}.${MAVEN_VER_MIN}.${MAVEN_VER_BLD}-bin.tar.gz && \
    tar -C /opt -xvzf /tmp/maven.tar.gz
