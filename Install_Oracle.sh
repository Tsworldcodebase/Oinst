# This script installs all Oracle componets and uses silent install file for DB #setup. You need a RHEL subscription and RHEL 8.2 OS.
#!/bin/bash
subscription-manager register --username [your username without brackets here]--password [your Password goes here without these brackets]
yum -y update & upgrade
yum install -y oracle-database-preinstall-19c

