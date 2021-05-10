# CDF Webinar: Using the Jenkins Templating Engine For Pipeline Modeling

This repository contains all the code needed for the live demonstration provided during the webinar. This has been tested on MacOS. 

- [CDF Webinar: Using the Jenkins Templating Engine For Pipeline Modeling](#cdf-webinar-using-the-jenkins-templating-engine-for-pipeline-modeling)
  - [Prerequisites](#prerequisites)
  - [Launch Jenkins](#launch-jenkins)
  - [Watch for local changes](#watch-for-local-changes)
  - [Create a new library](#create-a-new-library)
  - [Wrap up](#wrap-up)

## Prerequisites

* [Just](https://github.com/casey/just)
* [Docker](https://www.docker.com/get-started)
* Git
* [watchexec](https://github.com/watchexec/watchexec)
  
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