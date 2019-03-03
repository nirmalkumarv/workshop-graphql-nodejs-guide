#!/bin/sh

set -e

git config --global user.email "ivan.corrales.solera@gmail.com"
git config --global user.name "Iván Corrales Solera"

rm -rf book-output
git clone -b gh-pages https://github.com/wesovilabs-workshops/workshop-graphql-nodejs-guide.git book-output
cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
