# redis-cluster-testing

## Setup/starting the servers:
- clone this repo
- wget and untar redis (https://redis.io/download) in this folder directly
  - tar -xvf archive.tar.gz --strip-components=1
- run `make`. The redis-server binary is now in `src/redis-server`
- the `cluster` folder has a folder for 9 servers running between ports 9101-9303. They should be unused ports but you can check with telnet first.
`telnet localhost 9101`...
- now open 9 terminal sessions and start redis from each of the folders inside cluster: `../../src/redis-server ./redis.conf'

# Configuring the Cluster
