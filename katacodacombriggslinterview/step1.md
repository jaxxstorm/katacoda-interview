In this exercise, you'll be asked to start the redis database.

Unfortunately, the redis database is misconfigured.

You can attempt to start the database using the following command:

`systemctl start redis-server{{execute}}`

Make a note of the error, and ensure you read all of the output from the terminal message

## Find the config file

The previous command should provide you enough information to find the configuration file.

## Remove the configuration error

You'll need to use the editor of your choice to remove the errant configuration line

## Start the database

You can start the database using a similar command to the command in the intro

## Verify the connection

You can check the status of the database by running the following command:

`redis-cli ping`

If you see "PONG" you've been successful!

