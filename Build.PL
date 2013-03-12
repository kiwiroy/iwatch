use Module::Build;

use strict;
use warnings;

my $build = Module::Build->new(
    dist_name          => 'iwatch',
    dist_author        => 'A N Author',
    dist_abstract      => 'iwatch - a realtime filesystem monitor',
    dist_version_from  => 'iwatch',
    license            => 'perl',
    create_makefile_pl => 1,
    requires           => {
	'POSIX'                     => '1.0',
	'Event'                     => '0.1',
	'File::Find'                => '0.1',
	'Getopt::Long'              => '1.0',
	'Linux::Inotify2'           => '1.22',
	'Mail::Sendmail'            => '0.1',
	'XML::SimpleObject::LibXML' => '0.1',
	'Sys::Hostname'             => '0.1',
	'Sys::LoadAvg'              => '0.03',
	'Sys::Syslog'               => '0.1'
    },
    
    );

$build->create_build_script;
