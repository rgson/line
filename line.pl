#!/usr/bin/perl

sub help { die "Usage: $0 N[-X][+Y] [FILE...]\n"; }

help unless shift =~ m/^(\d+)([+-]\d+)?([+-]\d+)?$/;

my %n = ( '' => int($1) );
for ($2, $3) {
	next unless defined;
	my $sign = substr($_, 0, 1);
	help if defined $n{$sign};
	$n{$sign} = int($_);
}

my $start = $n{''} + ($n{'-'} // 0);
my $end   = $n{''} + ($n{'+'} // 0);

while (<>) {
	next if $. < $start;
	last if $. > $end;
	print;
}
