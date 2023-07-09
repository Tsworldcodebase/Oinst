# This script installs all Oracle componets and uses silent install file for DB #setup. You need a RHEL subscription and RHEL 8.2 OS.
# Oracle rpm provided must be uploaded to /tmp/oracle directory ( create this directory before uploading file) check file name and script too.
#!/bin/bash
subscription-manager register --username []--password []
yum -y update & wait $!
yum -y upgrade & wait $!
yum -y install https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackage/oracle-database-preinstall-19c-1.0-2.el8.x86_64.rpm & wait $!
yum install -y https://downloads.druva.com/downloads/Phoenix/Linux/druva-phoenix-oracle-client-6.1.1-328698.x86_64.rpm && /etc/init.d/oracledb_ORCLCDB-19c configure
mkdir -p /u01/app/oracle/product/19.0.0/dbhome_1
chown -R oracle:oinstall /u01/app/oracle/product/19.0.0/dbhome_1
chmod -R 775 /u01/app/oracle
