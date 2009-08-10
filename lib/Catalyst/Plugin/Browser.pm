package Catalyst::Plugin::Browser;

use Moose::Role;
use CatalystX::RoleApplicator ();
use namespace::autoclean;

our $VERSION = '0.06';

after setup_finalize => sub {
    my ($app) = @_;

    # yeah, i know. sue me.
    CatalystX::RoleApplicator->init_meta(for_class => $app);

    $app->apply_request_class_roles(qw/
        Catalyst::TraitFor::Request::BrowserDetect
    /);
};

1;

__END__

=head1 NAME

Catalyst::Plugin::Browser - Browser Detection

=head1 SYNOPSIS

    use Catalyst qw[Browser];

    if ( $c->request->browser->windows && $c->request->browser->ie ) {
        # do something
    }


=head1 DESCRIPTION

Extends your applications request class with browser detection.

=head1 METHODS

=over 4

=item browser

Returns an instance of L<HTTP::BrowserDetect>, which lets you get
information of the client's user agent.

=back

=head1 SEE ALSO

L<HTTP::BrowserDetect>, L<Catalyst::TraitFor::Request::BrowserDetect>, L<Catalyst::Request>.

=head1 AUTHOR

Christian Hansen, C<ch@ngmedia.com>
Marcus Ramberg, C<mramberg@cpan.org>
Florian Ragwitz, C<rafl@debian.org>

=head1 LICENSE

This library is free software . You can redistribute it and/or modify it under
the same terms as perl itself.

=cut
