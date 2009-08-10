use strict;
use warnings;
use inc::Module::Install 0.91;

name 'Catalyst-Plugin-Browser';
all_from 'lib/Catalyst/Plugin/Browser.pm';

requires 'Catalyst::Runtime' => '5.80004';
requires 'CatalystX::RoleApplicator';
requires 'Catalyst::TraitFor::Request::BrowserDetect';
requires 'namespace::autoclean';
requires 'Moose';

auto_install;
resources repository => 'http://dev.catalyst.perl.org/repos/Catalyst/Catalyst-Plugin-Browser/';

WriteAll;
