[[ ! command -v git]]
then
      echo 'git must be installed'
      exit 1
fi

if [[ -v $2 ]]
then
      echo './setup.sh <category>'
      exit 1
fi

if [[ -v $2 ]]
then
    echo './setup.sh <category> <path to shell config>'
    exit 1
fi

git clone https://github.com/JaydenDev/QuickLetterAliases /tmp
cat /tmp/QuickLetterAliases/categories/$2.sh >> $3
