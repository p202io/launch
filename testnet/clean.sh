#!/bin/bash -e

rm -r ./data/cl-node/chaindata
rm ./data/cl-node/metaData
rm ./data/cl-node/tosaccepted

rm ./data/cl-validator/tosaccepted
rm ./data/cl-validator/validator.db

rm -r ./data/el-node/geth/chaindata
rm -r ./data/el-node/geth/nodes
rm -r ./data/el-node/geth/triecache
rm ./data/el-node/geth/LOCK
rm ./data/el-node/geth/transactions.rlp
