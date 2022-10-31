#!/bin/bash -e

curl -H "Content-Type: application/json" \
  --data '{"jsonrpc":"2.0","method":"admin_importChain","params":["/p202/testnet/data/el-node/chain_0-500"],"id":1}' \
  http://localhost:8545
