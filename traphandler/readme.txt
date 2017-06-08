INSTRAUCTIONS FOR EXECUTION 


1.INSTALL PHP,APACHE,MYSQL,NET-SNMP,PYTHON.MYSQL-PHP,MYSQL-PYTHON
2.DOWNLOAD ALL THE FILES
3,REPLACE snmptrapd.conf with snmptrapd.conf in directory /etc/snmp/
4.Go to /var/www/html and place index.php 
5.configure snmptrap in cd /etc/default to run as demon and to log into file
6.restart apache and snmptrapd
7.open browser to see the current and previous status and also forward traps based on ip provided on web page.
