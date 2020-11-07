#!/usr/bin/perl
use Test::More;
use lib '.';
require "t/test-lib.pl";

$ENV{'LC_ALL'} = 'C'; # setting up English environment for testing purpose
my $o = `perl -I. -- ./bin/cal2html t/02-calendar`;
is($o, getfile('t/02-calendar.html'), '02.t');

done_testing();
