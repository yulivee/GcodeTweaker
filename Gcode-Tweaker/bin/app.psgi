#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";

use Gcode::Tweaker;
Gcode::Tweaker->to_app;
