[![PyPI](https://img.shields.io/pypi/status/bigchaindb.svg?maxAge=2592000)](https://pypi.python.org/pypi/BigchainDB)
[![PyPI](https://img.shields.io/pypi/v/bigchaindb.svg)](https://pypi.python.org/pypi/BigchainDB)
[![Travis branch](https://img.shields.io/travis/bigchaindb/bigchaindb/master.svg)](https://travis-ci.org/bigchaindb/bigchaindb)
[![Codecov branch](https://img.shields.io/codecov/c/github/bigchaindb/bigchaindb/master.svg)](https://codecov.io/github/bigchaindb/bigchaindb?branch=master)
[![Documentation Status](https://readthedocs.org/projects/bigchaindb/badge/?version=latest)](https://bigchaindb.readthedocs.org/en/latest/)
[![Join the chat at https://gitter.im/bigchaindb/bigchaindb](https://badges.gitter.im/bigchaindb/bigchaindb.svg)](https://gitter.im/bigchaindb/bigchaindb?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)


# BigchainDB Server

BigchainDB is a scalable blockchain database. [The whitepaper](https://www.bigchaindb.com/whitepaper/) explains what that means.

We're hiring! [Learn more](https://github.com/bigchaindb/org/blob/master/engjob.md).

## To Get Started
Assuming you're using Ubuntu of some stripe: 

```bash
./local_setup/bootstrap.sh
```

By the end, you should see something like: 
```bash
INFO:bigchaindb.processes:
****************************************************************************
*                                                                          *
*   Initialization complete. BigchainDB is ready and waiting for events.   *
*   You can send events through the API documented at:                     *
*    - http://docs.bigchaindb.apiary.io/                                   *
*                                                                          *
*   Listening to client connections on: localhost:9984                     *
*                                                                          *
****************************************************************************

[2016-10-06 15:48:11 +0000] [3500] [INFO] Starting gunicorn 19.6.0
[2016-10-06 15:48:11 +0000] [3500] [INFO] Listening at: http://127.0.0.1:9984 (3500)
[2016-10-06 15:48:11 +0000] [3500] [INFO] Using worker: threads
[2016-10-06 15:48:11 +0000] [3501] [INFO] Booting worker with pid: 3501
[2016-10-06 15:48:11 +0000] [3502] [INFO] Booting worker with pid: 3502
[2016-10-06 15:48:11 +0000] [3503] [INFO] Booting worker with pid: 3503
[2016-10-06 15:48:11 +0000] [3504] [INFO] Booting worker with pid: 3504
[2016-10-06 15:48:11 +0000] [3505] [INFO] Booting worker with pid: 3505
[2016-10-06 15:48:11 +0000] [3506] [INFO] Booting worker with pid: 3506
[2016-10-06 15:48:11 +0000] [3507] [INFO] Booting worker with pid: 3507
[2016-10-06 15:48:11 +0000] [3508] [INFO] Booting worker with pid: 3508
[2016-10-06 15:48:11 +0000] [3509] [INFO] Booting worker with pid: 3509
[2016-10-06 15:48:11 +0000] [3510] [INFO] Booting worker with pid: 3510
[2016-10-06 15:48:11 +0000] [3511] [INFO] Booting worker with pid: 3511
[2016-10-06 15:48:11 +0000] [3512] [INFO] Booting worker with pid: 3512
[2016-10-06 15:48:11 +0000] [3513] [INFO] Booting worker with pid: 3513
[2016-10-06 15:48:12 +0000] [3514] [INFO] Booting worker with pid: 3514
[2016-10-06 15:48:12 +0000] [3515] [INFO] Booting worker with pid: 3515
[2016-10-06 15:48:12 +0000] [3516] [INFO] Booting worker with pid: 3516
[2016-10-06 15:48:12 +0000] [3517] [INFO] Booting worker with pid: 3517
[2016-10-06 15:55:11 +0000] [3500] [INFO] Handling signal: winch
```
See it? Good. Everything worked.

### Actually interacting

Now open up a new terminal, `cd` to the base directory from above, if necessary. 

Use `source venv/bin/activate` to re-activate your Python virtualenv. 

Use `python` to start an interactive shell. 

Start firing away on [these examples](https://bigchaindb.readthedocs.io/projects/server/en/latest/drivers-clients/python-server-api-examples.html).


### Killing RethinkDB
Your RethinkDB instance will be running as a daemon (in the background). To kill this process, run `ps axjf` or `top` \ `htop` (hit `Ctrl+C` to exit) and note the `PID` of the `rethinkdb` instances. 

For example, via `ps axjf`, a tree view of running processes:  

```bash
   PPID     PID    PGID     SID TTY        TPGID STAT   UID   TIME COMMAND
      0       1       1       1 ?              1 Ss+      0   0:00 /mnt/shared/sbin/micro-inetd 22 /mnt/shared/sbin/dropbear -i -s -m -R
      1     594     594     594 ?             -1 Ss       0   0:01 /mnt/shared/sbin/dropbear -i -s -m -R
      1    3091    3091    3091 ?             -1 Ssl   1000   0:00 rethinkdb --bind all --daemon
   3091    3092    3092    3091 ?             -1 S     1000   0:00  \_ rethinkdb --bind all --daemon
   3092    3175    3092    3091 ?             -1 S     1000   0:00      \_ rethinkdb --bind all --daemon
```

In this instance, running the command `kill 3091` would kill the top of the process tree `rethinkdb --bind all --daemon`. 



## Get Started with BigchainDB Server

### [Quickstart](http://bigchaindb.readthedocs.io/en/latest/quickstart.html)
### [Set Up & Run a Dev/Test Node](http://bigchaindb.readthedocs.io/en/latest/dev-and-test/setup-run-node.html)
### [Run BigchainDB Server with Docker](http://bigchaindb.readthedocs.io/en/latest/appendices/run-with-docker.html)

## Links for Everyone
* [BigchainDB.com](https://www.bigchaindb.com/) - the main BigchainDB website, including newsletter signup
* [Whitepaper](https://www.bigchaindb.com/whitepaper/) - outlines the motivations, goals and core algorithms of BigchainDB
* [Roadmap](https://github.com/bigchaindb/org/blob/master/ROADMAP.md)
* [Blog](https://medium.com/the-bigchaindb-blog)
* [Twitter](https://twitter.com/BigchainDB)
* [Google Group](https://groups.google.com/forum/#!forum/bigchaindb)

## Links for Developers
* [BigchainDB Server Documentation](http://bigchaindb.readthedocs.io/en/latest/) - for developers
* [CONTRIBUTING.md](CONTRIBUTING.md) - how to contribute
* [Community guidelines](CODE_OF_CONDUCT.md)
* [Open issues](https://github.com/bigchaindb/bigchaindb/issues)
* [Open pull requests](https://github.com/bigchaindb/bigchaindb/pulls)
* [Gitter chatroom](https://gitter.im/bigchaindb/bigchaindb)

## Legal
* [Licenses](LICENSES.md) - open source & open content
* [Imprint](https://www.bigchaindb.com/imprint/)
* [Contact Us](https://www.bigchaindb.com/contact/)
