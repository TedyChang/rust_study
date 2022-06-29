#!/bin/zsh

echo -n "issue num ? "
read ISSUENO
echo -n "y or n Continue?"
read YN
if [[ "$YN" =~ ^[Nn] ]]
then
else
  git branch -d ${ISSUENO}
  git push origin --delete ${ISSUENO}
  git pull origin main
  git branch ${ISSUENO} main
  git checkout "${ISSUENO}"
  git add .
  git commit -m "study #${ISSUENO}"
  git push origin ${ISSUENO}
  git checkout main
  git branch -d ${ISSUENO}
  git reset --hard
  git pull origin main
fi