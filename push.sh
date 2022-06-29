#!/bin/zsh

echo -n "issue num ? "
read ISSUENO
echo -n "y or n Continue?"
read YN
if [[ "$YN" =~ ^[Nn] ]]
then
else
  git pull origin main
  git add .
  git commit -m "fixed #${ISSUENO}"
  git push origin ${ISSUENO}
  git pull origin main
fi