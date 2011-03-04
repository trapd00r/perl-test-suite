#!/usr/bin/perl
use strict;
use warnings;
use Test::More;

unless(exists($ENV{RELEASE_TESTING})) {
  plan skip_all => 'these tests are for release candidate testing';
}

eval 'use Test::Strict';    ## no critic
plan skip_all => 'Test::Strict is required' if $@;

# tweak this to change coverage acceptance level
my $coverage_threshold = 70;

# shut up warnings from Devel::Cover
$ENV{DEVEL_COVER_OPTIONS} = '-silent,1';
all_cover_ok( $coverage_threshold, 't' );

