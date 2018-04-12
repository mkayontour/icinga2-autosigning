#!/usr/bin/perl
#
use JSON;
#use warning;
use strict;

my $jsonresult;

$jsonresult = `icinga2 ca list --json`;

printf $jsonresult;
