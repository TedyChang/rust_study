#!/bin/zsh

echo -n "issue num ? "
read ISSUENO
echo -n "y or n Continue?"
read YN
if [[ "$YN" =~ ^[Yy] ]]
then
  git add .
  git commit -m "study #${ISSUENO}"
  git push origin main
else
fi