# generated by wxGlade 0.6.8 on Tue May 12 22:08:45 2015
#
# To get wxPerl visit http://wxPerl.sourceforge.net/
#

use Wx 0.15 qw[:allclasses];

# begin wxGlade: dependencies
use Wx::Grid;

# end wxGlade

# begin wxGlade: extracode
# end wxGlade

package MyFrame;

use Wx qw[:everything];
use base qw(Wx::Frame);

my $gcodepath;

sub new {
    my ( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
    $parent = undef                       unless defined $parent;
    $id     = -1                          unless defined $id;
    $title  = "Gcode Temperature Tweaker" unless defined $title;
    $pos    = wxDefaultPosition           unless defined $pos;
    $size   = wxDefaultSize               unless defined $size;
    $name   = ""                          unless defined $name;

    # begin wxGlade: MyFrame::new
    $style = wxDEFAULT_FRAME_STYLE
      unless defined $style;

    my $button1_id = 1;
    my $button2_id = 2;
    my $button3_id = 3;
    my $button4_id = 4;
    my $button5_id = 5;
    my $button6_id = 6;
    my $button7_id = 7;
    my $label1_id  = 10;
    my $label2_id  = 12;
    my $grid1_id   = 20;

    $self =
      $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    $self->{button1} =
      Wx::Button->new( $self, $button1_id, "Choose Gcode File...",
        wxDefaultPosition, wxDefaultSize, wxBU_LEFT );
    $self->{label1} =
      Wx::StaticText->new( $self, $label1_id, "Gcode-File:",
        wxDefaultPosition, wxDefaultSize, );
    $self->{button2} =
      Wx::Button->new( $self, $button2_id, "Choose Preset File...",
        wxDefaultPosition, wxDefaultSize, wxBU_LEFT );
    $self->{label2} =
      Wx::StaticText->new( $self, $label2_id, "Preset-File:",
        wxDefaultPosition, wxDefaultSize, );
    $self->{static_line_1} =
      Wx::StaticLine->new( $self, wxID_ANY, wxDefaultPosition, wxDefaultSize, );
    $self->{grid1} = Wx::Grid->new( $self, $grid1_id );
    $self->{button3} = Wx::Button->new( $self, $button3_id, "Add Row" );
    $self->{static_line_2} =
      Wx::StaticLine->new( $self, wxID_ANY, wxDefaultPosition, wxDefaultSize, );
    $self->{button4} = Wx::Button->new( $self, $button4_id, "Save Preset" );
    $self->{button5} = Wx::Button->new($self, $button5_id, "Delete Row");
    $self->{button6} = Wx::Button->new( $self, $button6_id, "Modify Gcode" );
    $self->{button7} = Wx::Button->new( $self, $button7_id, "Reset" );

    $self->__set_properties();
    $self->__do_layout();

    Wx::Event::EVT_BUTTON( $self, $button1_id, \&FileDialog1 );
    Wx::Event::EVT_BUTTON( $self, $button2_id, \&FileDialog2 );
    Wx::Event::EVT_BUTTON( $self, $button3_id, \&AddRow );
    Wx::Event::EVT_BUTTON( $self, $button4_id, \&SavePreset );
    Wx::Event::EVT_BUTTON( $self, $button5_id, \&DelRow);
    Wx::Event::EVT_BUTTON( $self, $button6_id, \&ModGcode );
    Wx::Event::EVT_BUTTON( $self, $button7_id, \&Reset );

    # end wxGlade
    return $self;

}

sub __set_properties {
    my $self = shift;
    # begin wxGlade: MyFrame::__set_properties
    $self->SetTitle("Gcode-Tweaker");
    $self->SetSize( Wx::Size->new( 800, 510 ) );
    $self->{button1}->SetMinSize( Wx::Size->new( 147, 29 ) );
    $self->{button3}->SetFocus();
    $self->{grid1}->CreateGrid( 3, 2 );
    $self->{grid1}->EnableDragColSize(0);
    $self->{grid1}->EnableDragRowSize(0);
    $self->{grid1}->EnableDragGridSize(0);
    $self->{grid1}->SetSelectionMode(wxGridSelectCells);
    $self->{grid1}->SetColLabelValue( 0, "Z-Value[mm]" );
    $self->{grid1}->SetColSize( 0, 130 );
    $self->{grid1}->SetColLabelValue( 1, "Temp[\xb0C]" );
    $self->{grid1}->SetColSize( 1, 130 );
    $self->{grid1}->SetMinSize( Wx::Size->new( 381, 267 ) );
    $self->{button6}->SetMinSize(Wx::Size->new(150, 50));
    # end wxGlade
}

sub __do_layout {
    my $self = shift;
    # begin wxGlade: MyFrame::__do_layout
    $self->{sizer_3} = Wx::BoxSizer->new(wxVERTICAL);
    $self->{grid_sizer_2} = Wx::GridSizer->new(1, 3, 0, 2);
    $self->{grid_sizer_4} = Wx::GridSizer->new(1, 2, 2, 2);
    $self->{sizer_1} = Wx::BoxSizer->new(wxVERTICAL);
    $self->{grid_sizer_1} = Wx::GridSizer->new(2, 2, 2, 0);
    $self->{sizer_3}->Add(600, 5, 0, wxEXPAND, 0);
    $self->{grid_sizer_1}->Add($self->{button1}, 0, wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 0);
    $self->{grid_sizer_1}->Add($self->{label1}, 0, wxALIGN_CENTER_VERTICAL, 0);
    $self->{grid_sizer_1}->Add($self->{button2}, 0, wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 0);
    $self->{grid_sizer_1}->Add($self->{label2}, 0, wxALIGN_CENTER_VERTICAL, 0);
    $self->{sizer_3}->Add($self->{grid_sizer_1}, 0, wxEXPAND, 0);
    $self->{sizer_3}->Add(600, 5, 0, 0, 0);
    $self->{sizer_3}->Add($self->{static_line_1}, 0, wxEXPAND, 0);
    $self->{sizer_3}->Add(600, 5, 0, wxEXPAND, 0);
    $self->{sizer_1}->Add(15, 10, 0, wxEXPAND, 0);
    $self->{sizer_1}->Add($self->{button3}, 0, wxALIGN_CENTER_HORIZONTAL, 0);
    $self->{sizer_1}->Add(20, 5, 0, wxEXPAND, 0);
    $self->{sizer_1}->Add($self->{button5}, 0, wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 0);
    $self->{grid_sizer_4}->Add($self->{sizer_1}, 1, wxEXPAND, 0);
    $self->{grid_sizer_4}->Add($self->{grid1}, 0, wxEXPAND|wxALIGN_CENTER_HORIZONTAL, 0);
    $self->{sizer_3}->Add($self->{grid_sizer_4}, 2, wxEXPAND, 0);
    $self->{sizer_3}->Add($self->{static_line_2}, 0, wxEXPAND, 0);
    $self->{sizer_3}->Add(600, 5, 0, 0, 0);
    $self->{grid_sizer_2}->Add($self->{button4}, 0, wxALIGN_CENTER_HORIZONTAL, 0);
    $self->{grid_sizer_2}->Add($self->{button7}, 0, wxALIGN_CENTER_HORIZONTAL, 0);
    $self->{grid_sizer_2}->Add($self->{button6}, 0, wxALIGN_CENTER_HORIZONTAL, 0);
    $self->{sizer_3}->Add($self->{grid_sizer_2}, 1, wxEXPAND, 0);
    $self->SetSizer($self->{sizer_3});
    $self->Layout();
    $self->Centre();

    # end wxGlade
}

use base 'Class::Accessor::Fast';

__PACKAGE__->mk_accessors(qw(previous_directory previous_file));

sub FileDialog1 {
    my ($self) = @_;
    my $dialog = Wx::FileDialog->new(
        $self,
        "Select a Gcode file",
        $self->previous_directory || '',
        $self->previous_file      || '',
        ( join '|', 'Gcode files (*.gcode)|*.gcode', 'All files (*.*)|*.*' ),
        wxFD_OPEN | wxFD_MULTIPLE
    );
    if ( $dialog->ShowModal == wxID_CANCEL ) {
        $self->{label1}->SetLabel("Gcode-File:");
    }
    my $newlabel = $dialog->GetFilename;
    $gcodepath = $dialog->GetPath;
    $self->{label1}->SetLabel("Gcode-File: $newlabel");
    $dialog->Destroy;
}

sub FileDialog2 {
    my ($self) = @_;
    my $dialog = Wx::FileDialog->new(
        $self,
        "Select a Preset file",
        $self->previous_directory || '',
        $self->previous_file      || '',
        ( join '|', 'Preset files (*.txt)|*.txt', 'All files (*.*)|*.*' ),
        wxFD_OPEN | wxFD_MULTIPLE
    );
    if ( $dialog->ShowModal == wxID_CANCEL ) {
        $self->{label2}->SetLabel("Preset-File:");
    }
    else {
        my $newlabel = $dialog->GetFilename;
        my $filepath = $dialog->GetPath;
        $self->{label2}->SetLabel("Preset-File: $newlabel");

        open( TEMPS, '<', "$filepath" ) || die "can't open temperature file!";
        my %tempsteps;
        while ( my $line = <TEMPS> ) {
            chomp $line;
            unless ( $line =~ m/^#.*|^\s*$/ ) {
                my ( $z_value, $temp ) = split /:/, $line;
                $tempsteps{$z_value} = $temp;
            }
        }

        close TEMPS;

	&Reset;
	
        my $size     = scalar keys %tempsteps;
        my $gridrows = $self->{grid1}->GetNumberRows();

        while ( $size > $gridrows ) {
            $self->{grid1}->AppendRows(1);
            $gridrows = $self->{grid1}->GetNumberRows();
        }

        my $count = 0;

        foreach $key ( sort { $a <=> $b } keys %tempsteps ) {
            $self->{grid1}->SetCellValue( $count, 0, $key );
            $self->{grid1}->SetCellValue( $count, 1, $tempsteps{$key} );
            $count++;
        }


        $dialog->Destroy;
    }
}

sub AddRow {
    my ( $self, $event ) = @_;
    $self->{grid1}->AppendRows(1);
}

sub DelRow {
    my ( $self, $event ) = @_;
    my $gridrows = $self->{grid1}->GetNumberRows();
    $self->{grid1}->DeleteRows($gridrows-1,1);
}

sub SavePreset {
    my ($self) = @_;
    my $dialog = Wx::FileDialog->new(
        $self,
        "Save Presets in file",
        $self->previous_directory || '',
        $self->previous_file      || '',
        ( join '|', 'Preset files (*.txt)|*.txt', 'All files (*.*)|*.*' ),
        wxFD_SAVE | wxFD_OVERWRITE_PROMPT
    );
    if ( $dialog->ShowModal == wxID_CANCEL ) {
    }
    my $presetpath = $dialog->GetPath;
    my $presetfile = $dialog->GetFilename;
    $dialog->Destroy;
open( OUTPUT, '>', "$presetpath") || die "can't create output file!";
binmode(OUTPUT);

my $z_value;
my $temp;
my $gridrows = $self->{grid1}->GetNumberRows();
$gridrows--;

for ( my $i = 0; $i <= $gridrows; $i++) {
        $z_value = $self->{grid1}->GetCellValue( $i, 0);
        $temp    = $self->{grid1}->GetCellValue( $i, 1);
	$z_value =~ s/^\s+|\s+$//g;
	$temp =~ s/^\s+|\s+$//g;
	unless(($z_value eq "") || ($temp eq "")) {
print OUTPUT $z_value,":",$temp,"\n";
	}
}

close OUTPUT;

        $self->{label2}->SetLabel("Preset-File: $presetfile");

}

sub ModGcode {
    my ( $self, $event ) = @_;

	if ($gcodepath){
open( INPUT, '<', "$gcodepath" ) || die "can't open gcode file!";
binmode(INPUT);

        my $gridrows = $self->{grid1}->GetNumberRows();
	$gridrows--;
	my $min_temp = $self->{grid1}->GetCellValue( 0, 1);
	my $max_temp = $self->{grid1}->GetCellValue( $gridrows, 1);

my $outfile = $gcodepath;
$outfile =~ s/(.*)\.gcode/$1/g;

open( OUTPUT, '>', "${outfile}-${min_temp}C-${max_temp}C.gcode") || die "can't create output file!";
binmode(OUTPUT);

my %tempsteps;
my $z_value;
my $temp;

for ( my $i = 0; $i <= $gridrows; $i++) {
	$z_value = $self->{grid1}->GetCellValue( $i, 0);
	$temp    = $self->{grid1}->GetCellValue( $i, 1);
	$tempsteps{$z_value} = $temp;
}


while ( my $line = <INPUT> ) {
$line =~ s/\s+$//g;
print OUTPUT $line,"\n";
if ( $line =~ m/^G1 Z\d+\.?\d* .*/ ) {
        if ( $line =~ m/.*;.*/) {
                $line =~ s/(G1 Z\d+\.?\d* F\d+\.?\d*)(\s|.)*;.*/$1/g;
        }
        $line =~ s/G1 Z(\d+)\.?\d* F\d+\.?\d*/$1/g;
        $line =~ s/\x0D//g;

        if (exists($tempsteps{$line})){
        print OUTPUT "M104 S$tempsteps{$line}\n";
        delete $tempsteps{$line};
        }

    }

}

}

}

sub Reset {
    my ( $self, $event ) = @_;
    my $size = 1;
    my $gridrows  = $self->{grid1}->GetNumberRows();

        while ( $size < $gridrows ) {
            $self->{grid1}->DeleteRows($gridrows-1,1);
            $gridrows = $self->{grid1}->GetNumberRows();
        }

	$self->{grid1}->SetCellValue( 0, 0, "" );
        $self->{grid1}->SetCellValue( 0, 1, "" );
}

# end of class MyFrame

1;
