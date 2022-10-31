# Launch Project202 Testnet (chainId: 10202)


## Files
  - [sevices](./sevices);
  - [genesis.json](./data/el-node/genesis.json);
  - [Сhain data 0-500 blocks](./data/el-node/chain_0-500).


## Network setup
Perform network setup in [data](./data) folder.


## Docker launch
```bash
docker compose up -d
./import-blocks-docker.sh
```


## Installation and start of services
```bash
cd services
sudo cp el-node.service cl-node.service cl-validator.service /etc/systemd/system/
sudo systemctl start el-node
sudo systemctl start cl-node
sudo systemctl start cl-validator
./import-blocks.sh
```
