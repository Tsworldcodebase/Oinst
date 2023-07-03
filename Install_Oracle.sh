# This script installs all Oracle componets and uses silent install file for DB #setup. You need a RHEL subscription and RHEL 8.2 OS.
# Oracle rpm provided must be uploaded to /tmp/oracle directory ( create this directory before uploading file) check file name and script too.
#!/bin/bash
subscription-manager register --username [your username without brackets here]--password [your Password goes here without these brackets]
yum -y update & wait $! 
yum -y upgrade & wait $!
yum -y install https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackage/oracle-database-preinstall-19c-1.0-2.el8.x86_64.rpm
yum -y yum localinstall /tmp/oracle/oracle-database-ee-19c-1.0-1.x86_64\(1\).rpm
yum install -y https://downloads.druva.com/downloads/Phoenix/Linux/druva-phoenix-oracle-client-6.1.1-328698.x86_64.rpm
