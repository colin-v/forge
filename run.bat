@echo off
rem Launch Forge from the source tree. Works from any working directory.
pushd "%~dp0forge-gui"
java -Xmx4g -Dio.netty.tryReflectionSetAccessible=true -Dfile.encoding=UTF-8 -jar "..\forge-gui-desktop\target\forge-gui-desktop-2.0.12-SNAPSHOT-jar-with-dependencies.jar" %*
popd
