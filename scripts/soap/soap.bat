@echo off
setlocal
call ..\scriptEnv

%JAVA_HOME%\bin\java -Djavax.net.ssl.trustStore=%TRUST_STORE% com.transcendsys.platform.integ.client.http.HttpSoapRequestClient %1 %2 %3
