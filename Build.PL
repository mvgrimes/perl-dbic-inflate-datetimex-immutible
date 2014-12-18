use Module::Build;
my $build = Module::Build->new(
    module_name   => 'DBIx::Class::InflateColumn::DateTimeX::Immutable',
    license       => 'perl',
    create_readme => 1,

    configure_requires => {
        'Module::Build' => '0.4004',
    },

    requires => {
        'perl'                 => '5.006',
        'DateTimeX::Immutable' => '0.30',
        'DBIx::Class'          => '0.000',
        'Try::Tiny'            => '0.000',
        'namespace::autoclean' => '0.21',
    },

    test_requires => {
        'Test::More'      => '0.87',
        'Test::Exception' => '0.35',
    },

    meta_merge => {
        resources => {
            bugtracker =>
              'https://github.com/mvgrimes/perl-dbic-datetimex-immutable/issues',
            repository =>
              'https://github.com/mvgrimes/perl-dbic-datetimex-immutable'
        }
    },
);

$build->create_build_script;
