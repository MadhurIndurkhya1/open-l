#!/bin/bash
# Author: Madhur Indurkhya (24BAI10547)

echo "================================================================================"
echo "                   Apache AUDIT - PACKAGE INSPECTOR                 "
echo "================================================================================"
if [ -f "/etc/debian_version" ]; then
  PACKAGE_MANAGER="apt"
  PACKAGE_NAME="apache2"
else
  PACKAGE_MANAGER="yum"
  PACKAGE_NAME="httpd"
fi

if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(lsb_release -d | cut -d':' -f2-) system."
  echo "Version: $($PACKAGE_MANAGER show $PACKAGE_NAME | grep Version | cut -d':' -f2- | xargs)"
else
  echo "Status: $PACKAGE_NAME is NOT installed on this $(lsb_release -d | cut -d':' -f2-) system."
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Apache: Apache is a free and open-source cross-platform web server software."
echo " - Linux: Linux is a family of open-source Unix-like operating systems based on the Linux kernel."
echo " - MySQL: MySQL is an open-source relational database management system."
echo " - PHP: PHP is a server-side scripting language used for web development."
echo "================================================================================"