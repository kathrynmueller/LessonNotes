# README

## Ruby version
2.4.1p111

## Configuration
To run the app you'll need a Redis server, and you have to start the workers.

### Install Redis
If you have homebrew, in your terminal:

`brew install redis`

### Start up the Redis server
`redis-server /usr/local/etc/redis.conf`

### Start workers
`rake resque:work QUEUE='*'`

(to stop workers: CONTROL C)
