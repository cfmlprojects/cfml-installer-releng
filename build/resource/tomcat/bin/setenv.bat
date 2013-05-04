SET DIR=%~dp0%
SET JAVA_OPTS=-Xms128m -Xmx256m -XX:MaxPermSize=64m
SET JAVA_OPTS=%JAVA_OPTS% -javaagent:%DIR%\..\..\lib\railo-inst.jar
if "%JAVA_HOME%" == "" set JAVA_HOME=%DIR%\..\..\jre\
set PATH=%PATH;%DIR%;