#!/bin/sh

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Starting to update gh-pages\n"

  cd $HOME/build/lucab0ni
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis"
  git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/lucab0ni/QmlForSymposium.git gh-pages > /dev/null

  cd gh-pages
  echo -e "gh-pages content before copy screens"
  ls -la screeens/
  cp -Rf $HOME/screens/* screeens/
  ls -la screeens/
  echo -e "gh-pages content after to have copied screens"

  git add -f .
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages"
  git push -fq origin gh-pages > /dev/null

  echo -e "Done magic with coverage\n"
else
  echo -e "Cannot start update gh-pages\n"
fi
