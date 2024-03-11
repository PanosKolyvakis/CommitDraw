#!/bin/bash

# Go to your repository directory
cd /Users/panoskolyvakis/Vsprojects/CommitDraw

# Dates array, add dates as 'YYYY-MM-DD'
DATES=('2023-08-15') 

for DATE in "${DATES[@]}"
do
  # Change the date
  export GIT_COMMITTER_DATE="$DATE 12:00:00"
  export GIT_AUTHOR_DATE="$DATE 12:00:00"

  # Perform the commit
  echo "Commit for $DATE" > dummy.txt
  git add dummy.txt
  git commit -m "Commit on $DATE"

done

# Push the commits to GitHub
git push origin main


#Make the script executable by running chmod +x commit.sh
#Execute the script by running ./commit.sh