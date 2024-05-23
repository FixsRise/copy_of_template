
git remote add upstream https://github.com/FixsRise/copy_of_template.git
git fetch upstream
git checkout main
git rebase upstream/main
git push origin main
