#### Establish Git Connection:

1. Checking for existing SSH keys https://help.github.com/articles/checking-for-existing-ssh-keys/
2. Generating a new SSH key and adding it to the ssh-agent: https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it
-to-the-ssh-agent/
3. Testing your SSH connection: https://help.github.com/articles/testing-your-ssh-connection/

<hr>

#### How to sync a file to Git?

git add <filename>
git commit -m ""
git pull
git push

<hr>

#### How to remove a file from remote?

git rm <filename> -r -f
git commit -m "delete some files"
git push origin master


<hr>


#### How to Adding an existing project to GitHub using the command line? 
[link](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)

git init
git add .
git commit -m
git remote add origin <remoteURL>
git remote -v
git pull
git push origin master


###### You might have this error when you do git pull:

`There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.`

`git pull <remote> <branch>`

`If you wish to set tracking information for this branch you can do so with:`

`git branch --set-upstream-to=origin/<branch> master`


>Try this: git pull origin master --allow-unrelated-histories [link](https://stackoverflow.com/questions/37937984/git-refusing-to-merge-unrelated-histories)

>git branch --set-upstream-to=origin/master master [link](https://stackoverflow.com/questions/32056324/git-pull-there-is-no-tracking-information-for-the-current-branch)


<hr>

##### Reference:


- Linux下使用git命令及github项目: http://blog.csdn.net/five3/article/details/8904635

- Git Official Help: https://help.github.com/articles/connecting-to-github-with-ssh/
