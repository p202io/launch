#!/bin/bash -e

cd src/node
make all

cd ../validator
bazel build --define network=minimal --jobs=auto --remote_cache= //cmd/beacon-chain:beacon-chain  //cmd/validator:validator  //tools/interop/convert-keys
