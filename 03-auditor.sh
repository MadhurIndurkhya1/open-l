#!/bin/bash
# Author: Madhur Indurkhya (24BAI10505)

dirs=("/etc" "/var/log" "/usr/bin" "/var/www" "/etc/apache2" "/var/log/apache2")

echo "================================================================================"
echo "                   Apache AUDIT - DIRECTORY AUDITOR                 "
echo "================================================================================"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo -e "$dir\t$(du -sh $dir | cut -f1)\t$(stat -c %a $dir)\t$(stat -c %U $dir)"
  else
    echo "$dir does not exist"
  fi
done

echo "================================================================================"