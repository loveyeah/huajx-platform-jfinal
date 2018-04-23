#!/bin/sh

echo "项目Git操作"

git pull origin master

msg="无"
[ -n "$1" ] && msg=$1

git add .

echo "git commit -am $msg"
git commit -am "$msg"

echo "git push -u origin master"
git push -u origin master

util=huajx-util

if [ -d "$util" ] ; then
  cd $util
  git pull origin master
  git add .
  git commit -am "$msg"
  git push -u origin master
fi

core=huajx-core

if [ -d "$core" ] ; then
  cd $core
  git pull origin master
  git add .
  git commit -am "$msg"
  git push -u origin master
fi

