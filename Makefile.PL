use strict;
use warnings;
use inc::Module::Install 0.65;

name 'Catalyst-Plugin-Browser';
all_from 'lib/Catalyst/Plugin/Browser.pm';

requires 'Catalyst::Runtime' => '5.7006';
requires 'HTTP::BrowserDetect';

auto_install;
WriteAll;
