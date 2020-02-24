today=`date +'%Y%m%d'`
coder=$1

if [ -z $1 ]; then
	echo "Enter name as first argument"
	exit
fi

branch="$today-$coder"

git checkout -b $branch
git add .
git commit -m ":tada: code in the dark submission for $coder"
git push --set-upstream origin $branch