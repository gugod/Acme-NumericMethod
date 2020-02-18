package Acme::NumericMethod;
use v5.8.8;
use strict;
our $VERSION='0.05';
use Lingua::EN::Words2Nums;

sub import {
    my $package = (caller)[0];
    no strict 'refs';
    *{"${package}::AUTOLOAD"} = sub {
        no strict;
        my $n = $AUTOLOAD;
        $n =~ s/.*:://;
        return words2nums($n);
    };
}

1;
__END__

=head1 NAME

Acme::NumericMethod - I know numeric methods

=head1 SYNOPSIS

  use Acme::NumericMethod;
  print one(); # 1
  print one_million_forty_two(); # 1000042

=head1 SEE ALSO

L<Acme::Numbers>, L<Lingua::EN::Words2Nums>

=head1 AUTHOR

Kang-min Liu <gugod@gugod.org>

=head1 COPYRIGHT

Copyright 2005-2007 by Kang-min Liu <gugod@gugod.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See <http://www.perl.com/perl/misc/Artistic.html>

=cut

