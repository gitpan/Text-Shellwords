package Text::Shellwords;

# simple wrapper around perl4-based shellwords.pl

use strict;
require Exporter;
require 'shellwords.pl';

use vars qw(@ISA @EXPORT $VERSION);
@ISA = 'Exporter';
$VERSION = '1.00';

@EXPORT = qw(shellwords);

1;

__END__

=head1 NAME

Text::Shellwords

=head1 SYNOPSIS

  use Text::Shellwords;
  @words = shellwords($line);
  @words = shellwords(@lines);
  @words = shellwords();

=head1 DESCRIPTION

This is a thin wrapper around the shellwords.pl package, which comes
preinstalled with Perl.  This module imports a single subroutine,
shellwords().  The shellwords() routine parses lines of text and
returns a set of tokens using the same rules that the Unix shell does
for its command-line arguments.  Tokens are separated by whitespace,
and can be delimited by single or double quotes.  The module also
respects backslash escapes.

If called with one or more arguments, shellwords() will treat each
argument as a line of text, parse it, and return the tokens.  If
called without any arguments, shellwords() will parse B<$_> and
clobber it.

=head1 BUGS

Please report them.

=head1 SEE ALSO

L<shellwords.pl>

=head1 AUTHOR

Lincoln Stein <lstein@cshl.org>.

Copyright (c) 2001 Cold Spring Harbor Laboratory

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.  See DISCLAIMER.txt for
disclaimers of warranty.

=cut
