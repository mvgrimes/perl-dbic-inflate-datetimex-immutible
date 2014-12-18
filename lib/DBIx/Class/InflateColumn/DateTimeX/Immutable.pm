package DBIx::Class::InflateColumn::DateTimeX::Immutable;

use strict;
use warnings;
use base qw/DBIx::Class::InflateColumn::DateTime/;
use DBIx::Class::Carp;
use DateTimeX::Immutable;
use Try::Tiny;
use namespace::autoclean;

sub _inflate_to_datetime {
    my $self = shift;
    my $rv = $self->next::method( @_ );

    ## warn "\$rv isa " . ref $rv . "\n";

    bless $rv, 'DateTimeX::Immutable';
    return $rv;
}

1;
