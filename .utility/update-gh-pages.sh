#!/bin/sh

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Starting to update gh-pages\n"

  cd $TRAVIS_BUILD_DIR
  cd ..
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis"
  git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/lucab0ni/QmlForSymposium.git gh-pages > /dev/null

  cd gh-pages
  cp -Rf $HOME/screens/* screens/

  git add -f .
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages"
  git push -fq origin gh-pages > /dev/null

  echo -e "Done magic with coverage\n"
else
  echo -e "Cannot start update gh-pages\n"
fi
