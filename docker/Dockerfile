FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install openjdk-8-jre wget ssh pdsh tar -y

ENV HADOOP_HOME=/hadoop

RUN wget https://dlcdn.apache.org/hadoop/common/hadoop-3.4.0/hadoop-3.4.0.tar.gz && \
    tar -xvzf hadoop-3.4.0.tar.gz -C / && \
    mv /hadoop-3.4.0 $HADOOP_HOME && \
    chmod -R 777 $HADOOP_HOME && \
    rm hadoop-3.4.0.tar.gz

RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa && \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys

ENV HADOOP_USER=hadoop
RUN useradd -ms /bin/bash $HADOOP_USER
RUN cp -r ~/.ssh /home/$HADOOP_USER
RUN chown -R $HADOOP_USER /home/$HADOOP_USER/.ssh

RUN apt-get install -y openssh-server sudo
RUN usermod -aG sudo $HADOOP_USER
RUN sudo sed -i /etc/sudoers -re 's/^%sudo.*/%sudo   ALL=(ALL:ALL) NOPASSWD: ALL/g'
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
ENV HADOOP_VERSION=3.4.0
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre" >> /hadoop/etc/hadoop/hadoop-env.sh

ENV HIVE_HOME=$HADOOP_HOME/apache-hive-4.0.0-bin
RUN wget https://dlcdn.apache.org/hive/hive-4.0.0/apache-hive-4.0.0-bin.tar.gz && \
    tar -xvzf apache-hive-4.0.0-bin.tar.gz -C $HADOOP_HOME && \
    chmod -R 777 $HIVE_HOME && \
    rm apache-hive-4.0.0-bin.tar.gz

RUN ln -s /usr/bin/python3 /usr/bin/python

USER $HADOOP_USER
WORKDIR /home/$HADOOP_USER

ADD ./docker/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]