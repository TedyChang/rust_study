#!/bin/zsh

git add .
read -k "?NUM Continue?"
echo "${NUM}"
echo "$NUM"
echo $NUM

read "?YN y or n Continue?"
if [[ "$YN" =~ ^[Yy] ]]
then
else
  echo "${ISSUENO}"
  git commit -m "study #${ISSUENO}"
  git push origin main
fi