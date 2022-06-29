#!/bin/zsh

git add .
ISSUE_NO=""
read "?ISSUE_NO Continue?"


read "?YN y or n Continue?"
if [[ "$YN" =~ ^[Yy] ]]
then
else
  git commit -m "study #$ISSUE_NO"
  git push origin main
fi