#!/bin/sh

# Copy the corresponding environment config file
if [ $ENV = "DEV" ]
then mv /usr/share/nginx/scripts/env-dev.js /usr/share/nginx/html/env.js
else mv /usr/share/nginx/scripts/env-uat.js /usr/share/nginx/html/env.js
fi

# Start nginx
nginx -g "daemon off;"