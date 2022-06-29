#!/bin/zsh

git add .
read "?ISSUENO Continue?"


read "?YN y or n Continue?"
if [[ "$YN" =~ ^[Yy] ]]
then
else
  git commit -m "study #$ISSUENO"
  git push origin main
fi