package Gcode::Tweaker;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {

	my @test1 = qw(anna otto hans);

    template 'index', {
	test1 => \@test1,
	};
};

get '/temperature' => sub {
	template 'temperature';
};

get '/tensile' => sub {
	template 'tensile';
};
true;
