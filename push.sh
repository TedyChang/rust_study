#!/bin/zsh

echo -n "issue num ? "
read ISSUENO
echo -n "y or n Continue?"
read YN
if [[ "$YN" =~ ^[Nn] ]]
then
else
  git pull origin main
  git pull origin "${ISSUENO}"
  git branch ${ISSUENO} main
  git checkout "${ISSUENO}"
  git add .
  git commit -m "study #${ISSUENO}"
  git push origin "${ISSUENO}"
fi