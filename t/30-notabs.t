#!/usr/bin/perl
# test for presence of tabs in sources

use strict;
use warnings;
use Test::More;

eval 'use Test::NoTabs';    ## no critic
plan skip_all => 'Test::NoTabs required' if $@;

all_perl_files_ok(qw/ lib t /);

