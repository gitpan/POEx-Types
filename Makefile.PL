
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'POEx-Types',
  NAME      => 'POEx::Types',
  AUTHOR    => 'Nicholas\ Perez\ \<nperez\@cpan\.org\>',
  ABSTRACT  => 'MooseX\:\:Types\ provided\ for\ the\ modern\ POE',
  VERSION   => '0.092430',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'gpl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0.92',
    "MooseX::Declare" => '0.27',
    "Test::Exception" => '0.27',
    "MooseX::Types" => '0.19',
    "MooseX::Types::Structured" => '0.18',
    "POE" => '1.007',
  },
);
