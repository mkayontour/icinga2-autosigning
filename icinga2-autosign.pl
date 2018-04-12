#!/usr/bin/perl -w

use JSON;
use strict;
use warnings;

my $jsonresult;
my $outresult;

open(my $filehandler, '<:encoding(UTF-8)', $jsonresult = `icinga2 ca list --json`;) or die "Could not access CA List";

open(my $filehandler2, '>:encoding(UTF8)', $outresult) or die "Ooops was that me!";

while (my $row = <$filehandler>) {
		print $row;
		chomp $row;

		my @splitted = split(/ /, $row);
	        printf $splitted[0];
	        printf $splitted[1];
	        printf $splitted[2];
	        printf $splitted[3];
	        printf $splitted[4];
	        printf $splitted[5];
	        printf $splitted[6];
	        printf $splitted[7];
	        printf $splitted[8];
	        printf $splitted[9];
	        printf $splitted[10];
	        printf $splitted[11];
	        printf $splitted[12];
	        printf $splitted[13];
	        printf $splitted[14];
	        printf $splitted[15];
	        printf $splitted[16];
	        printf $splitted[17];
	        printf $splitted[18];
	        printf $splitted[19];
	        printf $splitted[20];
	        printf $splitted[21];
}

close $filehandler2;

printf "fertich\n";
