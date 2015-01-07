FROM ubuntu

RUN mkdir -p /var/www/
RUN apt-get install curl -y
RUN cd /root && curl https://download.elasticsearch.org/kibana/kibana/kibana-3.1.2.tar.gz | tar xvz
RUN ln -s /root/kibana-3.1.2 /var/www/html 

VOLUME ["/var/www/html"]
