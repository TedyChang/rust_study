#!/bin/zsh

git add .
ISSUE_NO=""
read -p "Enter issue no: " ISSUE_NO

git commit -m "study #$ISSUE_NO"
git push origin main