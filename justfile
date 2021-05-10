default:
  @just --list --unsorted

build-image: 
  docker pull jenkins/jenkins:lts
  docker build jenkins -t local-jenkins

launch-jenkins: build-image
  docker rm -f demo-jenkins
  docker run -v $(pwd):/libraries -p 8080:8080 --name demo-jenkins -d local-jenkins

create libName:
  mkdir -p libraries/{{libName}}/{src,resources,steps}

watch:
  git checkout -B demo-branch
  watchexec --exts groovy just commit 

commit: 
  git add * 
  git commit -am "update"

cleanup: 
  docker rm -f demo-jenkins
  rm -rf libraries/**
  git checkout main 
  git branch -D demo-branch