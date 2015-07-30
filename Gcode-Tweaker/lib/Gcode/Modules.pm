#!/usr/bin/perl -w
package Modules;
#===============================================================================
#
#         FILE: Modules.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 20.07.2015 21:00:05
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT  = ();
@EXPORT_OK = qw(&openPreset);

my $path = "/home/yulivee/proggen/perl/GcodeTweaker/Gcode-Tweaker/public";

sub openPreset {

 my ($presetFile) = @_;

 open ( PRESET, '>', "$path/preset/$presetFile" ) || die "can't open preset file!";

 my @preset;
 my $lineCount=1;

 while ( my $line = <TEMPS> ) {
 	my %preset;
	chomp $line;
	unless ( $line =~ m/^#.*|^\s*$/ ) {
		my ( $z_value, $temp ) = split /:/, $line;
		%preset = (
			count => $lineCount,
			zValue => $z_value,
			Temp   => $temp
			);
	
		push( @preset, \%preset);
		
		$lineCount++;
	}
 }

 close PRESET;

 return @preset;

}
