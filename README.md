# Launch Project202 blockchain
The repository contains instructions and data to run the blockchain.


## Files
  - [Project202 Mainnet (chainId: 202)](./mainnet/);
  - [Project202 Testnet (chainId: 10202)](./testnet/).


## From Docker
See [hub.docker.com/orgs/p202io](https://hub.docker.com/orgs/p202io/repositories).  
Use the `docker-compose.yml` file in the [mainnet](./mainnet) or [testnet](./testnet) folder.

### Install dependencies
```bash
# Docker
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

sudo apt install -y docker-ce
sudo systemctl status docker

sudo usermod -aG docker ${USER}
su - ${USER}


# docker-compose
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

chmod +x ~/.docker/cli-plugins/docker-compose

docker compose version
```


## From source code

### Install dependencies
```bash
## build-essential
sudo apt update
sudo apt install -y build-essential

## go
curl -OL https://golang.org/dl/go1.19.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.19.2.linux-amd64.tar.gz
sudo nano ~/.profile
source ~/.profile
go version

## bazel
sudo apt -y install apt-transport-https curl gnupg
curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
sudo mv bazel-archive-keyring.gpg /usr/share/keyrings
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list

sudo apt update && sudo apt install -y bazel
sudo apt update && sudo apt full-upgrade
sudo apt install -y g++ unzip zip

sudo apt update && sudo apt install bazel-5.3.0
```


### Open ports in UFW
All used ports:
  - el-node:
    - 30303, 30303/udp, 8545, 8546, 8551, 6060
  - cl-node:
    - 13000, 12000/udp, 3500, 4000, 8080, 6060
  - cl-validator:
    - 8081, 7000, 7500, 6060

```bash
# el-node
sudo ufw allow 30303
sudo ufw allow 30303/udp

# cl-node
sudo ufw allow 12000/udp
sudo ufw allow 13000
```


### Install from source code
```bash
git clone https://github.com/p202io/launch /p202
cd /p202 && ./download.sh && ./build.sh
```


### Network setup and launch
Navigate to the desired folder ([mainnet](./mainnet) or [testnet](./testnet)) and continue with the instructions.
