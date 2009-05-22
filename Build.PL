
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
    "perl" => '5.10.0',
    "MooseX::Declare" => '0.22',
    "MooseX::Types" => '0.10',
    "MooseX::Types::Structured" => '0.14',
    "POE" => '1.005',
  },
  script_files => [ qw() ],
);

$build->create_build_script;
