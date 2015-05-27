
Wait for Redis
===========

Waits for a Redis connection to become available.

Installation
============

```bash
npm install --save wait-for-redis
```

Usage
=====

Run as a module within another script:

```coffeescript
waitForRedis = require 'wait-for-redis'
config =
  port: 6380
  quiet: true

waitForRedis.wait(config)
```
      

Or run stand-alone

```bash
wait-for-redis --port=6379 --quiet
```

Building
============

cake build

