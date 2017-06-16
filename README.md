# Network-management-with-snmp
Simple Network Management Protocol (SNMP) is a widely used protocol for monitoring the health and welfare of network equipment (eg. routers), computer equipment and even devices like UPSs


ABOUT THIS PROJECT

SIMPLE NETWORK MANAGEMENT PROTOCOL (SNMP)

1.subagent script is written in PERL to configure SNMP demon to listen to enterprise
oids where each oid corresponds to counter,where the value varies with
time.
snmp subagent folder contains scripts related to above topic 


2.Python scripts were written to calculate rate of each counter and the
corresponding rates where inserted in INFLUXDB database and rates are
observed in GRAFANA for rate visualisation/Graph
.prober and grafana folder contains scripts related to above topic

3.Traphandler and Trap listening system was developed to manage devices using python 
