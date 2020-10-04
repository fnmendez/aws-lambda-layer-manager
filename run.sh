#!/bin/bash

for packageName in "$@"; do
  mkdir ${packageName}
  cd ${packageName}
  yarn init -y
  yarn add ${packageName}
  cd ".."
  zip -r "${packageName}.zip" "${packageName}"
  rm -rf "${packageName}"
done;