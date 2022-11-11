git config core.editor " 'C:/Program Files/Sublime Text 3/sublime_text.exe' "

## Lesson 4, Step 1

cd\users\admin\Desktop\theme  
git init  
dir       	# .git  
## git remote add origin https://github.com/santimcs/Learnable-Git-Course.git
(git remote remove origin if any error and want to remove repository)
git remote -v  
git status  
git add .   # . = everything  
git status  
git commit -m "Initial commit, pushing theme over to github"  
git status  
## go to github.com and create repository with the name you want
git push origin master  
input user name and password  

## Lesson 4, Step 2: Pushing your changes to GitHub
------------------------------------------------

git status  
## modify index.html  
git add index.html    
git status    
git commit -m "Change title, subtible and navbar items"    
git push origin master    
## input user name and password    

## Lesson 4, Step 3: Practice Pushing your changes
-----------------------------------------------

git status  
## modify index.html
git add index.html  
git commit -m "Change items after carousel"  
git push origin master   
git log  
git log --pretty=oneline  

## Lesson 5, Step 1: Undoing a Staged Change
-----------------------------------------

git status  
git add index.html 
git reset HEAD index.html  
git status  

## Lesson 5, Step 2: Undoing a Commited Change
-------------------------------------------

git add index.html  
git commit -m "Committing our second mistake"  
git log --prettty=oneline  
git reset --soft HEAD~1  
git status 
git reset HEAD index.html
git status


Lesson 5, Step 3: Undoing a Pushed Change
-----------------------------------------
## modify index.html
git add index.html  
git commit -m "Committing our third mistake, we left other two in place"  
git log --prettty-oneline  
## press q to exit
git push origin master
 
git revert HEAD   

## Lesson 5, Step 4: Git Diff  
--------------------------

git diff index.html   

## to return to master, use
git checkout master