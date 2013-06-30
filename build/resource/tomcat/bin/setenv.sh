# Tomcat memory settings
# -Xms<size> set initial Java heap size
# -Xmx<size> set maximum Java heap size
# -Xss<size> set java thread stack size
# -XX:MaxPermSize sets the java PermGen size
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
JAVA_OPTS="-Xms128m -Xmx256m -XX:MaxPermSize=64m";   # memory settings
JAVA_OPTS="$JAVA_OPTS -javaagent:$DIR/../../lib/railo-inst.jar ";   # java agent settings
if [[ -z "$JAVA_HOME" ]] ; then
	if [[ -d "$DIR/../../jre/" ]] ; then
		JAVA_HOME=$DIR/../../jre/
		export JAVA_HOME;
	fi
fi
# needed by FR
# LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/railo/fusionreactor/etc/lib

export JAVA_OPTS;
