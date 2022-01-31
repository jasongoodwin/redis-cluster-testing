# redis-cluster-testing

## Setup/starting the servers:
- clone this repo
- wget and untar redis (https://redis.io/download) in this folder directly
  - tar -xvf archive.tar.gz --strip-components=1
- run `make`. The redis-server binary is now in `src/redis-server`
- the `cluster` folder has a folder for 9 servers running between ports 9101-9303. They should be unused ports but you can check with telnet first.
`telnet localhost 9101`...
- now open 9 terminal sessions and start redis from each of the folders inside cluster: `../../src/redis-server ./redis.conf'

# starting/stopping
- You can start all clster nodes by executing `./start.sh` from inside the cluster folder.
- You can stop all cluster nodes by executing `./stop.sh` from instide the cluster folder (works on osx at least, and shouldn't kill any other redis-server instances)


Validate all of the nodes are running with ps:
```
$ ps -ef|grep redis-
  501 79069 79065   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9101 [cluster]
  501 79070 79066   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9102 [cluster]
  501 79072 79067   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9103 [cluster]
  501 79074 79068   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9201 [cluster]
  501 79075 79071   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9202 [cluster]
  501 79077 79073   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9203 [cluster]
  501 79079 79076   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9301 [cluster]
  501 79081 79078   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9302 [cluster]
  501 79082 79080   0  2:51pm ttys013    0:00.02 ../../src/redis-server *:9303 [cluster]
```

Note that each folder will have a log file if you need to check the output from the redis instance.

# configuring the cluster after starting
The nodes that are running don't yet know about each other.
