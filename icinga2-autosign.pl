#!/usr/bin/perl
#
use JSON;
use warnings;
use strict;
use Data::Dumper;

my ( $data, $cn, $matchpart);

use vars qw($opt_m);

#TODO

$matchpart = "corp.int";

#GetOptions (
#  "m|match_pattern" => $matchpart,
#);

$data = doIcingaCaList();

foreach my $fingerprint ( keys %{$data}) {
    $cn = $data->{$fingerprint}->{'subject'};
    $cn =~ s/CN = //;

    doMatching($cn);

}

sub doSigning {
  #TODO Sign the Certs

}

sub doMatching {
  if (grep(/$matchpart/, $_[0])) {
    print "matched CN $cn\n";
  }
  else
  {
    print "not matched CN $cn\n";
  }
}

sub doIcingaCaList {
  my $json = `icinga2 ca list --json`;
  my $result = decode_json($json);
  return $result;

 }
