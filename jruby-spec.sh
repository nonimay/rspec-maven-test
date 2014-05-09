BASE=`pwd`
CLASSPATH=$BASE/bin:$BASE/resources:$BASE/lib/spring-2.5.1.jar:
  $BASE/lib/commons-logging-1.0.4.jar
export CLASSPATH
jruby -S spec $1
