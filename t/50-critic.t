#!/usr/bin/perl
# test for recommendations from "Perl Best Practices"

use strict;
use warnings;
use Test::More;

unless(exists($ENV{RELEASE_TESTING})) {
  plan skip_all => 'these tests are for release candidate testing';
}

eval 'use Test::Perl::Critic';    ## no critic
plan skip_all => 'Test::Perl::Critic required' if $@;

all_critic_ok(qw/ lib t/);

