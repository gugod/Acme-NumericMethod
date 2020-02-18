#!/usr/bin/perl

use strict;
use Test::More;
use Test::Pod;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;

my @poddirs = qw(lib);
all_pod_files_ok(all_pod_files(@poddirs));
