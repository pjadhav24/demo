@echo off
setlocal
call ..\scriptEnv
%JAVA_HOME%\bin\java com.transcendsys.platform.integ.client.agent.UploadFile %1
