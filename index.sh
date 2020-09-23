#!/bin/bash
packageName=${1}

mkdir "lambda-layer-nodejs-${packageName}"
cd "lambda-layer-nodejs-${packageName}"
mkdir "nodejs"
cd "nodejs"
yarn init -y
yarn add "${packageName}"
cd ".."
zip -r "nodejs.zip" "nodejs"
cd ".."
