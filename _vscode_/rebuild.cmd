@echo off
msbuild ".vscode\WebSite.targets" /t:ReBuild /nologo /v:detailed