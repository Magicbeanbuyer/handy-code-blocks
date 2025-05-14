# bin/bash
git init

# Check if .gitignore exists, if not, create it
if [ ! -f .gitignore ]; then
  touch .gitignore
  echo ".gitignore file created. ✅"
else
  echo ".gitignore file already exists."
fi


if [ ! -f .gitignore_local ]; then
    ln -s .git/info/exclude .gitignore_local
    echo ".gitignore_local file created. ✅"
else
  echo ".gitignore_local file already exists."
fi

echo ".gitignore_local" >> .gitignore_local

echo "Done! ✅"