#!/bin/bash
echo "apache tomcat installation file name $0"
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.88/bin/apache-tomcat-9.0.88.tar.gz
tar -xvzf apache-tomcat-9.0.88.tar.gz
rm -rf apache-tomcat-9.0.88.tar.gz
mv apache-tomcat-9.0.88 tomcat-9