# run-jirb.sh
CLASSPATH="target/test-classes:target/classes"
CLASSPATH="$CLASSPATH:`mvn -Dmdep.outputFile=/dev/stderr dependency:build-classpath 2>&1 > /dev/null`"
export CLASSPATH

jirb "$@"
