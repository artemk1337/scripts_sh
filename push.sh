#!/bin/sh
rm .* a.out *.o
clear
echo '\033[1;41;4m	Norminette	\033[0m\033[0;33m'
norminette
printf '\033[1;39m'
read -p 'Do you wank to push? Yes or no [y/n]? '
if [ $REPLY = 'n' ]
 then break
else
 echo '\033[0m\033[1;41;4m	GIT ADD		\033[0m'
 git add . &>/dev/null 
 echo '\033[1;41;4m	GIT COMMIT	\033[0m\033[0;36m'
 git commit -m "fix" | grep changed
 echo '\033[0m\033[1;41;4m	GIT PUSH	\033[0m\033[0;32m'
 git push | grep warning
fi
