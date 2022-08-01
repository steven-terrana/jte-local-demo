# Overview

This repository accelerates local development of JTE libraries for demonstration purposes and learning.
It was originally used as part of a [CDF Webinar](https://www.youtube.com/watch?v=FYLaoqn0pDE).

## Prerequisites

* [Just](https://github.com/casey/just)
* [Docker](https://www.docker.com/get-started)
* Git
* [watchexec](https://github.com/watchexec/watchexec)

Note that this has been tested on MacOS.
  
## Launch Jenkins

This repository contains a dockerfile in the the `jenkins` directory that integrates with [Jenkins Configuration as Code (JCasC)](https://github.com/jenkinsci/configuration-as-code-plugin). 

To build that container image and launch it, run: 

``` bash
just launch-jenkins
```

When ready, jenkins will be available at http://localhost:8080

## Watch for local changes

This repo uses `just` to launch `watchexec` to automatically commit changes as they are made so that they instantly are accessible to Jenkins. This makes for a seamless local-development experience.

run: 

``` bash
just watch
```
This will launch a persistent process in the foreground.

## Create a new library

To create a new library in the `libraries` directory, run: 

``` bash
just create libraryName
```

## Wrap up

To wipe the slate clean, run: 

``` bash
just cleanup
```
