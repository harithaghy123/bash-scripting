#!/bin/bash
echo "RUNNING TOMCAT INSTALLATION..."
	sleep 2
	echo "installing Java Verion 1.8"
yum install java-1.8* -y
	sleep 2
	echo "installing wget in local systemt..."
yum install wget -y

	sleep 2
	echo "chnaging the Directory to opt"
	sleep 4
	echo "Downloading the tomcat_apacheversion v 9.0.75 ...."
cd /opt/ && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz

	sleep 2

	echo "extracting tomcat apache-9.0.75 and renaming to tomcat"
cd /opt/ &&  tar -zvxf apache-tomcat-9.0.75.tar.gz && mv apache-tomcat-9.0.75 tomcat
	sleep 2
	echo "creating Soft link of tomcat"
ln -s /opt/tomcat/bin/startup.sh /usr/local/bin/tomcatup
ln -s /opt/tomcat/bin/shutdown.sh /usr/local/bin/tomcatdown

	echo "STARTING TOMCAT APACHE."
cd /opt/tomcat/bin && sh startup.sh

	echo "TOMCAT APACHE V-9.0.75 STARTED SUCCESSFULLY......"
	echo "TO SHUTDOWN PLEASE USE tomcatdown"

