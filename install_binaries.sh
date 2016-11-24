git_duet_url=$(curl -s https://api.github.com/repos/git-duet/git-duet/releases/latest | jq -r ".assets[] | select(.name | test(\"linux_amd64\")) | .browser_download_url")
wget $git_duet_url
tar xvf linux_amd64.tar.gz -C ~/bin
rm linux_amd64.tar.gz
