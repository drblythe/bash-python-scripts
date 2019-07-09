#!/usr/bin/perl
use IO::Socket::UNIX;
my $sock = IO::Socket::UNIX->new(Peer => '~/.i3/ipc.sock');
