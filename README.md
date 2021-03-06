# NAME

DBIx::Class::InflateColumn::DateTimeX::Immutable - Inflate/deflate DBIx::Class columns to DateTimeX::Immutable objects

# VERSION

version 0.30

# SYNOPSIS

Load this component and then declare one or more columns to be of the datetime,
timestamp or date datatype.

    package Event;
    use base 'DBIx::Class::Core';

    __PACKAGE__->load_components(qw/InflateColumn::DateTimeX::Immutable/);
    __PACKAGE__->add_columns(
      starts_when => { data_type => 'datetime' }
      create_date => { data_type => 'date' }
    );

Then you can treat the specified column as a [DateTimeX::Immutable](https://metacpan.org/pod/DateTimeX::Immutable) object.

    print "This event starts the month of ".
      $event->starts_when->month_name();

# DESCRIPTION

This is subclass of [DBIx::Class::InflateColumn::DateTime](https://metacpan.org/pod/DBIx::Class::InflateColumn::DateTime) which inflates
and deflates columns to [DateTimeX::Immutable](https://metacpan.org/pod/DateTimeX::Immutable) objects. If functions exactly
like its parent, but objects are re-blessed into [DateTimeX::Immutable](https://metacpan.org/pod/DateTimeX::Immutable)
objections.

See [DBIx::Class::InflateColumn::DateTime](https://metacpan.org/pod/DBIx::Class::InflateColumn::DateTime) for more documentation.

# SEE ALSO

[DateTimeX::Immutable](https://metacpan.org/pod/DateTimeX::Immutable), [DBIx::Class::InflateColumn::DateTime](https://metacpan.org/pod/DBIx::Class::InflateColumn::DateTime),
[DateTime](https://metacpan.org/pod/DateTime), [DBIx::Class](https://metacpan.org/pod/DBIx::Class)

# AUTHOR

Mark Grimes, <mgrimes@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Mark Grimes, <mgrimes@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
