Now that the database is running, we need to get the web server running!

The webserver has a single operating system service.

You can view the current status of it by running `systemctl status webapp`{{execute}}

## Find the permission issue

Take a look at the output of the above command, and try and identify where the webapp is located. Once you've done that, locate the file with the incorrect permission.

## Fix the permission issue

Rectify this by setting the permissions back to the application user.

The application user is `webapp`

## Restart the webapp

Once you've verified the permissions are correct, go ahead and start the application. 
