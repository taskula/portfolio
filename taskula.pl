#!/usr/bin/env perl

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

use FindBin;
use lib "$FindBin::Bin/lib";

use Mojolicious::Lite;
use Taskula;

get '/' => sub {
    my $c = shift;

    my $taskula = Taskula->new;
    my $content = {
        description => $taskula->welcome($c->tx->remote_address),
        links => $taskula->links,
        version => $Taskula::VERSION,
        source => 'https://github.com/taskula/portfolio',
    };

     $c->render( status => 200, json => $content );
};

app->start;
