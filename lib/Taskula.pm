package Taskula;

# Copyright (C) 2017  Lari Taskula <lari@taskula.fi>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA

our $VERSION = '0.001';

use strict;
use warnings;

=head1 NAME

Taskula - A module for simple introduction of myself.

=head1 API

=head2 Class methods

=cut

=head3 new

my $taskula = Taskula->new;

Creates a new instance of Taskula.

=cut

sub new {
    my $class = shift;
    return bless {}, $class;
}

=head3 links

$taskula->links;

Returns a HASHref of links to most important social media profiles.

=cut

sub links {
    my $self = shift;

    return {
        email => 'lari@taskula.fi',
        github => 'https://github.com/taskula',
        linkedin => 'https://www.linkedin.com/in/lari-taskula-6a9756148/',
        telegram => 'https://t.me/taskula'
    };
}

=head3 welcome

$taskula->welcome($name);

Returns a string for greeting a person. Given a parameter C<$name>, points the
greeting to that person.

=cut

sub welcome {
    my ($self, $name) = @_;

    $name ||= 'there';

    my $description = <<'END_DESCRIPTION';
Hello <<name>>! This is a small Mojolicious::Lite application pointing you to
most important social media profiles of mine. Thank you for visiting!
END_DESCRIPTION

    $description =~ s/<<name>>/$name/;

    return $description;
}

=head1 AUTHOR

Lari Taskula <lari@taskula.fi>

=cut

1;
