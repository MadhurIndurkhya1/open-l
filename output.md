# Apache Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

\---

## 1\. System Identity Report (`01-identify.sh`)

```bash
Madhur@ubuntu-server:\~/Apache$ ./01-identify.sh
================================================================================
                   Apache AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Madhur Indurkhya
Home Directory:     /home/Madhur
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Wed Mar 29 14:30:00 UTC 2023
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

\---

## 2\. FOSS Package Inspector (`02-packages.sh`)

```bash
Madhur@ubuntu-server:\~/Apache$ ./02-packages.sh
================================================================================
                   Apache AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: apache2 is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 2.4.52-1ubuntu4.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Apache: Apache is a free and open-source cross-platform web server software.
 - Linux: Linux is a family of open-source Unix-like operating systems based on the Linux kernel.
 - MySQL: MySQL is an open-source relational database management system.
 - PHP: PHP is a server-side scripting language used for web development.
================================================================================
```

\---

## 3\. Disk and Permission Auditor (`03-auditor.sh`)

```bash
Madhur@ubuntu-server:\~/Apache$ ./03-auditor.sh
================================================================================
                   Apache AUDIT - DIRECTORY AUDITOR                 
================================================================================
/etc     16K     755     root
/var/log 4.0K    755     root
/usr/bin 16K     755     root
/var/www 4.0K    755     root
/etc/apache2  4.0K  755     root
/var/log/apache2  4.0K  755     root
================================================================================
```

\---

## 4\. Log File Analyzer (`04-logs.sh`)

```bash
Madhur@ubuntu-server:\~/Apache$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Apache AUDIT - LOG FILE ANALYZER                 
================================================================================
Found 10 occurrences of 'error' in the last 100 lines of /var/log/syslog

Last 5 matches:
Mar 29 14:25:01 ubuntu-server CRON\[3142]: (root) ERROR (syslog)
Mar 29 14:20:01 ubuntu-server CRON\[3141]: (root) ERROR (syslog)
Mar 29 14:15:01 ubuntu-server CRON\[3140]: (root) ERROR (syslog)
Mar 29 14:10:01 ubuntu-server CRON\[3139]: (root) ERROR (syslog)
Mar 29 14:05:01 ubuntu-server CRON\[3138]: (root) ERROR (syslog)
================================================================================
```

\---

## 5\. Open Source Manifesto Generator (`05-manifesto.sh`)

```bash
Madhur@ubuntu-server:\~/Apache$ ./05-manifesto.sh
================================================================================
                   Apache AUDIT - MANIFESTO GENERATOR                 
================================================================================
What is your name? Madhur
What is your favorite open-source project? Apache
What do you think is the most important aspect of open-source software? Freedom

My name is Madhur, and I believe in the power of open-source software. My favorite project is Apache, and I think the most important aspect of open-source is Freedom.

Manifesto saved to Madhur.txt
================================================================================
```

