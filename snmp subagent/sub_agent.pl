#!/usr/bin/perl

use NetSNMP::agent (':all');
use NetSNMP::ASN;
use NetSNMP::OID;


sub hello_handler {
  my ($handler, $registration_info, $request_info, $requests) = @_;
  my $request;
  for($request = $requests; $request; $request = $request->next()) {
    my $oid = $request->getOID();
    if ($request_info->getMode() == MODE_GET) {
         if ($oid == new NetSNMP::OID("1.3.6.1.4.1.4171.40.1")) {
              $request->setValue(ASN_COUNTER,time);
            }
         if ($oid > new NetSNMP::OID("1.3.6.1.4.1.4171.40.1")) {
            
             my $file = '/home/nikhil/counters.conf';
       	     open my $fh, $file or die "$file: $!";
             $oid1="$oid";
             my $char = '.';
  	     my $r_index = rindex($oid1, $char);
  	     my $id  = int(substr($oid1,$r_index+1)) ;
	     $id=$id-1;
             my $pass;
             my $count;
	     while (<$fh>) {
    	      chomp;
    	      my @fields = split /\s+/;
    	      if ($fields[0] eq $id) {
                $pass = int($fields[1]);
                $counter_value =$pass*time;
                
                }
             }
	     close $fh;
             $request->setValue(ASN_COUNTER,$counter_value);
          }
        }
  }
}

my $agent = new NetSNMP::agent();
$agent->register("sub_agent", "1.3.6.1.4.1.4171.40",
                 \&hello_handler);

