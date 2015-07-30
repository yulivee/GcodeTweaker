package Gcode::Tweaker;
use Dancer2;
use Modules qw(&openPreset);

our $VERSION = '0.1';

get '/' => sub {

	my @test1 = qw(anna otto hans);

    template 'index', {
	test1 => \@test1,
	};
};

get '/temperature' => sub {
	my @preset = &openPreset("20mm-box.preset");
	template 'temperature', { preset =>\@preset };
};

get '/tensile' => sub {
	template 'tensile';
};
true;
