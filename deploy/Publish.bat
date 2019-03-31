@echo off
SETLOCAL

if not defined DevEnvDir (
	call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\vsdevcmd.bat"
)

if not defined DevEnvDir (
	call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\Tools\vsdevcmd.bat"
)

msbuild ../MvcWithNetStandard.sln /p:DeployOnBuild=true /p:PublishProfile=PublishRelease /p:VisualStudioVersion=15.0 /p:Configuration=Release /m

ECHO Ready for Deploy
pause
ENDLOCAL