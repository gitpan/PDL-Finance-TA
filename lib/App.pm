package App::financeta;
use strict;
use warnings;
use 5.10.0;

our $VERSION = '0.03';
$VERSION = eval $VERSION;

use PDL::Finance::TA;

sub print_warning {
    my $license = <<'LICENSE';
    App::financeta  Copyright (C) 2014  Vikas N Kumar <vikas@cpan.org>
    This program comes with ABSOLUTELY NO WARRANTY; for details read the LICENSE
    file in the distribution.
    This is free software, and you are welcome to redistribute it
    under certain conditions.
    The developers are not responsible for any profits or losses due to use of this software.
    Use at your own risk and with your own intelligence.
LICENSE
    print STDERR "$license\n";
}
#TODO: parse arguments and set up options
sub run {
    my @args = @_;
    my $gui = PDL::Finance::TA->new(debug => 0);
    $gui->run;
}

1;
### COPYRIGHT: 2014 Vikas N. Kumar. All Rights Reserved.
### AUTHOR: Vikas N Kumar <vikas@cpan.org>
### DATE: 15th Aug 2014
### LICENSE: Refer LICENSE file

=head1 NAME

App::financeta

=head1 SYNOPSIS

App::financeta is a high level module that uses PDL::Finance::TA and invokes it
as an application. It handles command line processing of C<financeta>.

=head1 VERSION

0.03

=head1 METHODS

=over

=item B<run>

This function starts the graphical user interface (GUI) and parses command line
arguments. It invokes L<PDL::Finance::TA>.

=item B<print_warning>

This function prints license and disclaimer to C<STDERR>.

=back

=head1 SEE ALSO

=over

=item L<PDL::Finance::TA>

This is the GUI internal details being used by C<App::financeta>.

=item L<financeta>

The commandline script that calls C<App::financeta>.

=back

=head1 COPYRIGHT

Copyright (C) 2013-2014. Vikas N Kumar <vikas@cpan.org>. All Rights Reserved.

=head1 LICENSE

This is free software. You can redistribute it or modify it under the terms of
GNU General Public License version 3. Refer LICENSE file in the top level source directory for more
information.