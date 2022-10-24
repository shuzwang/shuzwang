:: convert all jemdoc to html and push it to Github
@echo off 
echo 'complie jemdocs'
call activate py38
start python ./jemdoc/jemdoc.py -c mysite.conf index example mathjax underscore link

pause

echo 'Enter commit message'

git add .

set /p Comment="Comment: "
git commit -m "%Comment%"
git push

pause