
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'POEx::Types',
                       'DISTNAME' => 'POEx-Types',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Nicholas Perez <nperez@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'Test::Exception' => '0'
                                           },
                       'ABSTRACT' => 'MooseX::Types provided for the modern POE',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100910',
                       'PREREQ_PM' => {
                                        'MooseX::Types::Moose' => '0',
                                        'MooseX::Types' => '0',
                                        'MooseX::Types::Structured' => '0',
                                        'POE' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



