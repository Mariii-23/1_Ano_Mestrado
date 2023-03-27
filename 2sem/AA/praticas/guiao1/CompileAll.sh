#! /bin/sh
SOURCEPATH="src"
CLASSES="classes"
CLASSPATH="lib/orm.jar"
if [ -z "$JAVACCMD" ] ; then
	if [ -n "$JAVA_HOME"  ] ; then
		if [ -x "$JAVA_HOME/bin/javac" ] ; then
			JAVACCMD="$JAVA_HOME/bin/javac"
		fi
	fi
fi

if [ -z "$JAVACCMD" ] ; then
	JAVACCMD=`which javac 2> /dev/null `
	if [ -z "$JAVACCMD" ] ; then
		JAVACCMD=javac
	fi
fi

if [ ! -x "$JAVACCMD" ] ; then
	echo "Error: JAVA_HOME is not defined correctly."
	exit 1
fi

if [ ! -x "$CLASSES" ] ; then
	mkdir "$CLASSES"
fi
if [ ! -x "$CLASSES/ormmapping" ] ; then
	mkdir "$CLASSES/ormmapping"
fi

if [ "$SOURCEPATH" != "$CLASSES" ] ; then
	cp -r "$SOURCEPATH/ormmapping" "$CLASSES"
fi

eval ""$JAVACCMD" -d "$CLASSES" -classpath "$CLASSPATH" "$SOURCEPATH"/gms/*.java "$SOURCEPATH"/ormsamples/*.java "
