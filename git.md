# Check out specific file from stash  
git checkout stash@{0} -- <file name>

# Check difference between commits in stash for a given file  
git diff stash@{0}^1 stash@{0} -- <filename>
  
Source:   
  https://stackoverflow.com/questions/1105253/how-would-i-extract-a-single-file-or-changes-to-a-file-from-a-git-stash
