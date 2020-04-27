# Getting started

## Prerequirements

* [Dotnet core](https://dotnet.microsoft.com/download/dotnet-core/3.1)
* [3 minutes of your time](#startcountdown)

## Instalation

* Download dotnet tool [Units.Core](https://www.nuget.org/packages/Units.Core/)

<div class="install-script-row">
    <pre class="install-script script" id="dotnet-cli-text">dotnet tool install --global Units.Core --version 1.0.0</pre>
</div>

## Create project with units core

* Create a directory

<div class="install-script-row">
    <pre class="install-script script" id="dotnet-cli-text">mkdir my-awesome-project</pre>
</div>

* Navigate to the directory

<div class="install-script-row">
    <pre class="install-script script" id="dotnet-cli-text">cd my-awesome-project</pre>
</div>

* Initialize dotnet console application

<div class="install-script-row">
    <pre class="install-script script" id="dotnet-cli-text">dotnet new console</pre>
</div>

* Initialize units core definition file

<div class="install-script-row">
    <pre class="install-script script" id="dotnet-cli-text">units Init</pre>
</div>

* Generate units core types with the definition file

<div class="install-script-row">
    <pre class="install-script script" id="dotnet-cli-text">units Run</pre>
</div>

* Build the dotnet project

<div class="install-script-row">
    <pre class="install-script script" id="dotnet-cli-text">dotnet build</pre>
</div>

* Get 0 errors!

## TLDR

#### If you just want to copy paste code click on the code snippet and paste it in your console

<div class="install-script-row">
    <pre class="install-script script" id="dotnet-cli-text">
mkdir my-awesome-project
cd my-awesome-project
dotnet new console
units Init
units Run
dotnet build
</pre>
</div>
