Welcome to the Interview exercise.

This exercise is designed to be a collaborative process between your and your interviewer.

# Problem

This host contains a simple guestbook webserver and a database.

The database uses [redis](https://redis.io/) - a key/value store widely used in open source tools. If you are not familar with redis, please don't worry - we are not testing your knowledge of Redis!

The exercise consists of two parts:

## Part 1

Your first task is to get the Redis database running. Someone has carelessly added a line to the redis configuration file which is not valid.

In order to complete the task, you must do the following:

  1. Find the configuration file for redis
  2. Remove the incorrect configuration line
  3. Start the operating system service to get web redis running


Once you have completed this, you should be able to use the redis-cli command to confirm the database is running.


## Part 2

The second task involves the web application. An operator has carelessly run a command that has broken the permission for the web application to read its "static assets" such as images and CSS. As a result, the application is not running correctly!

In order to complete the task, you must:

  1. Find the directory that the webapp assets and binary live in
  2. Identify the correct directory with incorrect permissions
  3. Fix the directory so the permissions are correct
  4. Start the operating system service so that the web server is running


Once you have completed this, the interview is over.

# Important Notes

The test is not designed to trip you up. We are trying to test not only your problem solving ability in a Linux environment, but also your communication and collaboration skills. We encourage you to discuss the problem with your interviewer, ask for feedback and help when you're stuck. We are not expecting you know all the answers.

## Searching for answers

We encourage you to use Google to search for answers to the problems. Please feel free to search for answers, or alternatively you can ask your interviewer for assistance.

## Operating System & Other Notes

The operating system in use here is Ubuntu 18.04. You should not need to know anything Ubuntu specific to complete the exercises.

All of the software installed is from the default operating system packages. Ubuntu 18.04 uses systemd to manage the startup scripts. You may need to be familiar with the following commands:

*Start a service*

```bash
systemctl start <servicename>
# or
service <servicename> start
```




