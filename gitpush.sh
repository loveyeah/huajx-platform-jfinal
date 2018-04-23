#!/bin/sh

echo "项目Git操作"

msg="无"
[ -n "$var" ] && msg=$1

git add .

echo "git commit -am $msg"
git commit -am "$msg"

echo "git push -u origin master"
git push -u origin master



