#!/bin/bash

# assumes you have done curl https://url.shae.run/links.json > links.json 
# and then edited the file to your liking
# this script just clones the repo and reuploads + edits the gist with the links.json

git clone https://github.com/arnos-stuff/suri-redirect /tmp/suri
cp links.json /tmp/suri/src/links.json
cd /tmp/suri
git add . && git commit -m "Committing update to links.json" && git push origin master

## last step must happen manually for now ..
# gh gist create update-links.sh --public -d "Link updater bash script"
