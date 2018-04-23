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

for module in huajx-core huajx-util ; do
  if [ -d "$module" ] ; then
    echo "将"$module"提交到配置库"
    cd $module
    git pull origin master
    git add .
    git commit -am "$msg"
    git push -u origin master
    cd ..
  fi
done
