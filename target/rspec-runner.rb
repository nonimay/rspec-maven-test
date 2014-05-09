require %(java)
MOJO_CLASSPATH={
  :directories=>[
    %q(/Users/fiona/Documents/workspace-sts-3.5.0.RELEASE/Calculator/target/test-classes),
    %q(/Users/fiona/Documents/workspace-sts-3.5.0.RELEASE/Calculator/target/classes),
  ],
  :jars=>[
  ],
}


MOJO_CLASSPATH[:directories].each do |dir|
  $: << dir
end
MOJO_CLASSPATH[:jars].each do |jar|
  require jar
end
require %q(/Users/fiona/.m2/repository/org/codehaus/mojo/rspec-maven-plugin/1.0-beta-6/rspec-maven-plugin-1.0-beta-6.jar)
BASE_DIR=%q(/Users/fiona/Documents/workspace-sts-3.5.0.RELEASE/Calculator)
SPEC_DIR=%q(/Users/fiona/Documents/workspace-sts-3.5.0.RELEASE/Calculator/src/test/specs)
REPORT_PATH=%q(/Users/fiona/Documents/workspace-sts-3.5.0.RELEASE/Calculator/target/rspec_report.html)
$: << SPEC_DIR
require %q(rubygems)
require %q(spec)
require %q(org/codehaus/mojo/rspec/maven_progress_formatter)
options = ::Spec::Runner::OptionParser.parse([
  SPEC_DIR, '-f', "html#{REPORT_PATH}", '-f', 'MavenProgressFormatter', *ARGV
], STDERR, STDOUT)
::Spec::Runner::CommandLine.run(options)
if File.new(REPORT_PATH, 'r').read =~ /, 0 failures/ 
  false
else
  true
end
