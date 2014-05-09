CLASSPATH=/Users/fiona/Documents/workspace-sts-3.5.0.RELEASE/Calculator/target/test-classes
CLASSPATH=$CLASSPATH:/Users/fiona/Documents/workspace-sts-3.5.0.RELEASE/Calculator/target/classes
export CLASSPATH
this_dir=$(dirname $0)
$JRUBY_HOME/bin/jruby\
  -J-Dbasedir=/Users/fiona/Documents/workspace-sts-3.5.0.RELEASE/Calculator\
  -J-Dfix.abug=true\
  $this_dir/rspec-runner.rb $*