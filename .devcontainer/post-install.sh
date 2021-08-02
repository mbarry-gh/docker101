#!/bin/sh

# copy files from webvalidate repo
mkdir -p webv
curl -o webv/benchmark.json -fsSL https://raw.githubusercontent.com/retaildevcrews/webvalidate/main/src/app/benchmark.json

pushd ./webv
sed -i 's/api/zzz/' benchmark.json
popd
