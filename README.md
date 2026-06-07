# ASPNetBuilder
Builder for ASP.Net Websites in VSCode

Will leverage VS Code's problems summary to summarize all errors from compilation and allowing you to jump to the lines of code from the Problems view.

Limitations: aspnet_compiler.exe only outputs the line number of the errors.

## Installation
* Be sure to have msbuild.exe and aspnet_compiler.exe installed
* Have folder containing msbuild.exe in your PATH envvar
* Copy _vscode_ contents into a `.vscode` folder in the root of your project
* Copy or symlink your website into `www` folder in the root of your project where `www` is your website root (contains web.config etc...)

## Root-level files & folders

| HotKey | Purpose |
|---|---|
| ctrl+shift+B | Build Website |
| ctrl+shift+alt+B | ReBuild Website |

---

## Root-level files & folders

| Path | Purpose |
|---|---|
| `.vscode/readme.md` | This document |
| `.vscode/tasks.json` | Tasks for building: Build Website, Rebuild, Clean  - No changes required |
| `.vscode/Website.targets` | Required for build process - No changes required |
| `.vscode/build.cmd` | optional - Convenience script that invokes the Build Website task |
| `.vscode/rebuild.cmd` | optional - Convenience script that invokes the ReBuild Website task |
| `www/` | ASP.NET website root - Copy over of create symlink to your wwwroot/<website> folder |
| `z_tmp/` | Scratch/staging copies of website files used during development |
| `w.env` | optional - Local environment variables (e.g. `WEBSITE_URL`) for launching website in browser |

## Reasoning for ASPNetBuilder
I have vb.net website projects that need converting to c# but in the meantime, Visual Studio is getting very bad at supporing vb.net as I don't think they have many developers working on supporting the IDE any longer. Visual Studio also has some really dump built in auto formatters that you cannot turn of which clobbers your formatting all the time making SVC very cumbersome.

Also, there are people who want to build or alter an asp.net website without having to learn the full Visual Studio IDE and toolchains. ASPNetBuilder allows you to build and troubleshoot your website without having to install full Visual Studio.

## Future
Would be great to figure out how to get this working on Linux as it is my prefered development OS.
