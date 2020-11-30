#!/bin/bash
echo "Docker - $(id)"
ls -la /srv/jekyll
chmod 777 /srv/jekyll
jekyll build --trace
if [ $? -ne 0 ]
then
  exit 1
fi
mkdir build
tar -czvf build/build.tar.gz -C _site .
cp ci-deploy.sh ./build

# Thank you to christianspecht.de for this script!