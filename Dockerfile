FROM idealista/java-debian-ansible:latest
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.tar.gz && tar xvf apache-*.tar.gz && rm -rf apache*.tar.gz && apache* /opt/tomcat && mkdir -p /opt/ansible
COPY * /opt/ansible/
RUN ansible-playbook i /opt/ansible/hosts /opt/ansible/ec2_create.yaml && ansible-playbook i /opt/ansible/hosts /opt/ansible/install_word.yaml
CMD ["./opt/tomcat/startup.sh"]
