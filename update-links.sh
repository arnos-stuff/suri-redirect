#!/bin/bash

# assumes you have done curl https://url.shae.run/links.json > links.json 
# and then edited the file to your liking
# this script just clones the repo and reuploads + edits the gist with the links.json

git clone https://github.com/arnos-stuff/suri-redirect /tmp/suri
cp links.json /tmp/suri/src/links.json
cd /tmp/suri
git add . && git commit -m "Committing update to links.json" && git push origin master
gh gist edit 7016bacae0337ef54df613cae107fa3f src/links.json