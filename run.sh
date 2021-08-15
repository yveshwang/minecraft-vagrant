#!/bin/sh

# Forge requires a configured set of both JVM and program arguments.
# Add custom JVM arguments to the user_jvm_args.txt
# Add custom program arguments {such as nogui} to this file at the end of the next line

# ip a
export JAVA_HOME='/home/stallo/.sdkman/candidates/java/16.0.1.hs-adpt'
echo $JAVA_HOME
$JAVA_HOME/bin/java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.17.1-37.0.17/unix_args.txt nogui
