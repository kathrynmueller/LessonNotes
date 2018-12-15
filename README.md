# Lesson Notes

Lesson Notes is a web app that allows a music teacher to maintain student information and records of each lesson. When a new lesson is scheduled, the app can send reminder email(s) to student and/or teacher for that next lesson.

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

## Try it out
Try out Lesson Notes live: [Deployed version](https://katmueller-lesson-notes.herokuapp.com/)

\*at this time emails do not send in the deployed version
