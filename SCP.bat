@echo off REM Check if a commit message was provided IF "%~1"=="" ( echo You must provide a commit message as the first parameter. exit /b 1 )

Git add -A

Git commit -m"%~1"

FOR /F "tokens=*" %%b IN ('git rev-parse --abbrev-ref HEAD') DO SET BRANCH=%%b

git push origin %BRANCH%