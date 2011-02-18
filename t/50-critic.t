#!/usr/bin/perl
# test for recommendations from "Perl Best Practices"

use strict;
use warnings;
use Test::More;

eval 'use Test::Perl::Critic';    ## no critic
plan skip_all => 'Test::Perl::Critic required' if $@;

all_critic_ok(qw/ lib t/);

