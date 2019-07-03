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

use Test::More tests => 6;

use Taskula;

subtest 'new() tests' => sub {
    plan tests => 2;

    ok(Taskula->can('new'), 'Method new() is available.');
    is(ref(Taskula->new), 'Taskula', 'new() returns an instance of Taskula.');
};

subtest 'business() tests' => sub {
    plan tests => 3;

    ok(Taskula->can('business'), 'Method business() is available.');

    my $business = Taskula->new->business;

    is(ref($business), 'HASH', 'business() returns a HASHref.');
    is($business->{hypernova}, 'https://www.hypernova.fi',
        'Contains Hypernova\'s website address.');
};

subtest 'cv() tests' => sub {
    plan tests => 2;

    ok(Taskula->can('cv'), 'Method cv() is available.');

    my $cv = Taskula->new->cv;

    like($cv, qr/LinkedIn/, 'cv() points to LinkedIn.');
};

subtest 'links() tests' => sub {
    plan tests => 6;

    ok(Taskula->can('links'), 'Method links() is available.');

    my $links = Taskula->new->links;
    is(ref($links), 'HASH', 'links() returns a HASHref.');
    ok($links->{email}, 'Contains an email address.');
    ok($links->{github}, 'Contains a link to GitHub.');
    ok($links->{linkedin}, 'Contains a link to LinkedIn.');
    ok($links->{telegram}, 'Contains a link to Telegram.');
};

subtest 'name() tests' => sub {
    plan tests => 2;

    ok(Taskula->can('name'), 'Method name() is available.');

    my $name = Taskula->new->name;

    is($name, 'Lari Taskula', 'name() returns correct name.');
};

subtest 'welcome() tests' => sub {
    plan tests => 2;

    ok(Taskula->can('welcome'), 'Method welcome() is available.');

    my $welcome = Taskula->new->welcome;

    like($welcome, qr/^Hello/, 'welcome() returns a greeting.');
};