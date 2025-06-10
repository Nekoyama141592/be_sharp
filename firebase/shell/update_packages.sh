#!/bin/sh

# source firebase/shell/update_packages.sh

env="dev"

cd firebase/cloud_functions/$env/functions

packages=(
  "aws-sdk"
  "axios"
  "firebase-admin"
  "firebase-functions"
  "googleapis"
)

dev_packages=(
  "firebase-functions-test"
  "typescript"
)

for package in "${packages[@]}"
do
  npm install "$package@latest"
done

for package in "${dev_packages[@]}"
do
  npm install "$package@latest" -D
done

cd ../../../..