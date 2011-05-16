#
# This file is part of Net-SFTP-Foreign-Exceptional
#
# This software is copyright (c) 2011 by GSI Commerce.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
use utf8;
use Modern::Perl;    ## no critic (UselessNoCritic,RequireExplicitPackage)

package Net::SFTP::Foreign::Exceptional::Types;

BEGIN {
    $Net::SFTP::Foreign::Exceptional::Types::VERSION = '0.001';
}

use Moose;
use MooseX::Types -declare => ['SFTP_Error'];
use MooseX::Types::Moose 'Value';
use List::MoreUtils 'any';
use Net::SFTP::Foreign::Constants;

subtype SFTP_Error, as Value, where {
    my $value = $ARG;
    any { $value == &{$ARG} }
    map {"Net::SFTP::Foreign::Constants::$ARG"}
        @{ $Net::SFTP::Foreign::Constants::EXPORT_TAGS{error} };
};

1;

__END__

=pod

=for :stopwords Mark Gardner GSI Commerce cpan testmatrix url annocpan anno bugtracker rt
cpants kwalitee diff irc mailto metadata placeholders

=encoding utf8

=head1 NAME

Net::SFTP::Foreign::Exceptional::Types

=head1 VERSION

version 0.001

=head1 SUPPORT

=head2 Perldoc

You can find documentation for this module with the perldoc command.

  perldoc Net::SFTP::Foreign::Exceptional

=head2 Websites

The following websites have more information about this module, and may be of help to you. As always,
in addition to those websites please use your favorite search engine to discover more resources.

=over 4

=item *

Search CPAN

The default CPAN search engine, useful to view POD in HTML format.

L<http://search.cpan.org/dist/Net-SFTP-Foreign-Exceptional>

=item *

AnnoCPAN

The AnnoCPAN is a website that allows community annonations of Perl module documentation.

L<http://annocpan.org/dist/Net-SFTP-Foreign-Exceptional>

=item *

CPAN Ratings

The CPAN Ratings is a website that allows community ratings and reviews of Perl modules.

L<http://cpanratings.perl.org/d/Net-SFTP-Foreign-Exceptional>

=item *

CPANTS

The CPANTS is a website that analyzes the Kwalitee ( code metrics ) of a distribution.

L<http://cpants.perl.org/dist/overview/Net-SFTP-Foreign-Exceptional>

=item *

CPAN Testers

The CPAN Testers is a network of smokers who run automated tests on uploaded CPAN distributions.

L<http://www.cpantesters.org/distro/N/Net-SFTP-Foreign-Exceptional>

=item *

CPAN Testers Matrix

The CPAN Testers Matrix is a website that provides a visual way to determine what Perls/platforms PASSed for a distribution.

L<http://matrix.cpantesters.org/?dist=Net-SFTP-Foreign-Exceptional>

=item *

CPAN Testers Dependencies

The CPAN Testers Dependencies is a website that shows a chart of the test results of all dependencies for a distribution.

L<http://deps.cpantesters.org/?module=Net::SFTP::Foreign::Exceptional>

=back

=head2 Bugs / Feature Requests

Please report any bugs or feature requests through the web
interface at L<https://github.com/mjgardner/net-sftp-foreign-exceptional/issues>. You will be automatically notified of any
progress on the request by the system.

=head2 Source Code

The code is open to the world, and available for you to hack on. Please feel free to browse it and play
with it, or whatever. If you want to contribute patches, please send me a diff or prod me to pull
from your repository :)

L<https://github.com/mjgardner/net-sftp-foreign-exceptional>

  git clone git://github.com/mjgardner/net-sftp-foreign-exceptional.git

=head1 AUTHOR

Mark Gardner <mjgardner@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by GSI Commerce.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut