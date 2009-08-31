
use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
  module_name   => 'POEx::Types',
  license       => 'gpl',
  dist_abstract => "MooseX\:\:Types\ provided\ for\ the\ modern\ POE",
  dist_name     => "POEx\-Types",
  dist_author   => [
"Nicholas\ Perez\ \<nperez\@cpan\.org\>",
  ],
  requires      => {
    "Test::More" => '0.92',
    "MooseX::Declare" => '0.27',
    "Test::Exception" => '0.27',
    "MooseX::Types" => '0.19',
    "MooseX::Types::Structured" => '0.18',
    "POE" => '1.007',
  },
  script_files => [ qw() ],
);

$build->create_build_script;
