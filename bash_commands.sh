# search for strings in a folder
grep -r 'pattern_to_match' directory_to_search

# to unlock locked folders
sudo chown -R $USER: $HOME

# SSH Key Generation
ssh-keygen -t rsa -b 4096 -C "neodigital claim SFPT" -f ./rsa-key

# move a.txt from dir_one to dir_two, a.txt is removed from dir_one
mv dir_one/a.txt dir_two

# copy all files from one dir to another 
cp -a from/. to/

# remove a dir completely
rm -rf to

# list file size, -h, --human-readable
ls -lh

# symlink
ln -s /path/to/file /path/to/symlink