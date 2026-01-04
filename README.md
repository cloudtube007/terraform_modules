We are getting this kind  of below error:

>>>>> git push origin dev
      error: src refspec dev does not match any
      error: failed to push some refs to 'https://github.com/cloudtube007/terraform_modules.git'

run:
>>>>> git pull --rebase dev
      fatal: Updating an unborn branch with changes added to the index.

>>>>> git status
On branch dev

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

>>>>> git rm --cached -r *  {it will remove all the commit changes}

>>>>> git status
On branch dev

No commits yet

Untracked files
  (use "git add <file>..." to include in what will be committed)
        .gitignore


>>>>> git add .
>>>>> git commit -m "____"
>>>>> git branch
* dev

>>>>> git push -u origin dev
