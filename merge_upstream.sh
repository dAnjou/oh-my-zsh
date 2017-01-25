#!/bin/bash

git remote add upstream https://github.com/robbyrussell/oh-my-zsh.git
git fetch upstream &&
git checkout master &&
git merge upstream/master &&
git push origin master
