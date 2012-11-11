use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Acme::Not',
    AUTHOR              => q{Schmooster <schmooster \AT gmail.com>},
    VERSION_FROM        => 'lib/Acme/Not.pm',
    ABSTRACT_FROM       => 'lib/Acme/Not.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::Most' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Acme-Not-*' },
);
