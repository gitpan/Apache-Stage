use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
	      'NAME'	=> 'Apache::Stage',
	      'VERSION_FROM' => 'Stage.pm', # finds $VERSION
	      dist => {
		       PREOP => 'co -l README && pod2text Stage.pm > README && ci -u README',
		       SUFFIX => 'gz',
		       COMPRESS => 'gzip -9',
		      }
);

