#!/bin/zsh

echo -n "issue num ? "
read ISSUENO
echo -n "y or n Continue?"
read YN
if [[ "$YN" =~ ^[Nn] ]]
then
else
  git branch ${ISSUENO} main
  git checkout ${ISSUENO}
  git add .
  git commit -m "study #${ISSUENO}"
  git push origin main
fi