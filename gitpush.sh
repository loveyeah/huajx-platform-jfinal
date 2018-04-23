#!/bin/sh

echo "项目Git操作"

git pull origin master

msg="无"
[ -n "$1" ] && msg=$1

for module in bin huajx-core huajx-entity ; do
  if [ -d "$module" ] ; then
    echo "将 "$module" 提交到配置库"
    cd $module
    git pull origin master
    git add .
    git commit -am "$msg"
    git push -u origin master
    cd ..
  fi
done

# entity
if [ -d "huajx-entity" ] ; then
  cd huajx-entity

  for module in huajx-admin-entity ; do
    if [ -d "$module" ] ; then
      echo "将 "$module" 提交到配置库"
      cd $module
      git pull origin master
      git add .
      git commit -am "$msg"
      git push -u origin master
      cd ..
    fi
  done

  echo "将 huajx-entity 提交到配置库"
  cd huajx-admin
  git pull origin master
  git add .
  git commit -am "$msg"
  git push -u origin master
  cd ..
fi

if [ -d "huajx-admin" ] ; then
  cd huajx-admin

  for module in huajx-admin-api huajx-admin-provider huajx-admin-clent ; do
    if [ -d "$module" ] ; then
      echo "将 "$module" 提交到配置库"
      cd $module
      git pull origin master
      git add .
      git commit -am "$msg"
      git push -u origin master
      cd ..
    fi
  done

  echo "将 huajx-admin 提交到配置库"
  cd huajx-admin
  git pull origin master
  git add .
  git commit -am "$msg"
  git push -u origin master
  cd ..
fi

git add .

echo "git commit -am $msg"
git commit -am "$msg"

echo "git push -u origin master"
git push -u origin master

