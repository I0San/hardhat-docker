# Simple hardhat node in Docker

Run "npx hardhat node" in docker and expose 8545 port.

1. Build image
```bash
docker build -t yourusername/hardhat-node-docker .
```

2. Run container

```bash
docker run -p 8545:8545 yourusername/hardhat-node-docker
```