#!/bin/zsh

git add .
read "?ISSUENO Continue?"
echo "${ISSUENO}"

read "?YN y or n Continue?"
if [[ "$YN" =~ ^[Yy] ]]
then
else
  echo "${ISSUENO}"
  git commit -m "study #${ISSUENO}"
  git push origin main
fi