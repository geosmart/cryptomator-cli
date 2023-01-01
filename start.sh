# 1. create vault by `cryptomator-1.6.17-x86_64.AppImage ` with password=demoPwd

# 2. create cryptomator webdav server
docker build -t cryptomator/cli  .

docker run --rm --network=host \
    -v /mnt/nasVault:/vaults/nasVault \
    cryptomator/cli \
    --bind 127.0.0.1 --port 18091 \
    --vault nasVault=/vaults/nasVault --password nasVault=demoPwd

# 3. mount webdav to disk
sudo apt-get install davfs2
mkdir /nasVault
echo 'demoPwd' | sudo mount.davfs  http://localhost:18091/nasVault/ /nasVault  -o username=admin
