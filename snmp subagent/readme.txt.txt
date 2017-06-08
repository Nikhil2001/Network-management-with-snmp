INSTRUCTIONS FOR ASSIGNMENT1

REQUIREMENTS
UBUNTU 16.04 OPERATING SYSTEM

1.Install Net-SNMP for ubuntu 
    the following link directs how to install Net-SNMP for ubuntu users.
    http://net-snmp.sourceforge.net/wiki/index.php/Net-SNMP on Ubuntu
    make sure to enable embedded perl support for snmpd.
    
 2.Install snmpd so that you will get a default snmpd.conf under directory
   /etc/snmp
   
   
 3. Make sure that you do not have same libraries on different locations or else 
    the snmpd might give an error. So remove any files present.
    
    
 3. under /etc/snmp/
     replace snmpd.conf contents  with the attached snmpagent.conf file
     
  4. Restart snmpd with
  
      systemctl restart snmpd.service
      
   5. the counter values can be seen on terminal by executing
   
       snmpget -v 2c -c public deviceip:161 <counter oid 1> <counter oid 2> ..<counter oid n> 
    
      