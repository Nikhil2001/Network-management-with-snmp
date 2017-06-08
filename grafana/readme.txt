README FOR ASSIGNMENT 3
download tarfile and put the scripts prober.py and backend.py from assignment 2 and assignment3 respectively in home directory. 
1.INSTALL INFLUX DB
2.INSTALL GRAFANA
3.INVOKE THE SCRIPT USING THE COMMAND ON TERMINAL LINE 
              "python backend.py <Agent IP:port:community> <sampling interval> <OID1> <OID2> …….. <OIDn>"
4.backend.py is the wrapper script around the prober.py designed previously in assignment 3
 5.Now make sure whether entries are present in INFLUXDB
    -ON TERMINAL 
        1.influx
           >show databases
           >use mydb
           >select *from rate
           .
           .
           .
           entries should be found.
           
 6.on terminal,start grafana server using
       "sudo service grafana-server start"
 7.ENTER IP:3000 in browser
 8.grafana dash board can be seen
 9.login as admin admin
 10.configure grafana
     -add data source (in my case"mydb1")
     -configure datasource and click on save and test.
     -"Data source working" can be seen
     -now create or choose an existing dashboard and click on graph
     -click on panel title
     -then click on edit
     -then select query , add source,tag and select counter and on clicking eye symbol on grafna dashboard and 
     on refreshing every 5s output of counter can be seen.
 
     
     REFERNECES:
     [1].http://www.andremiller.net/content/grafana-and-influxdb-quickstart-on-ubuntu
     [2].https://docs.influxdata.com/influxdb/v1.1/introduction/installation/