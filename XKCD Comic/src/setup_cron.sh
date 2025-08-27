#!/bin/bash
# This script should set up a CRON job to run cron.php every 1 minutes.
# You need to implement the CRON setup logic here.

# Absolute path to PHP and your script
PHP_PATH=$(which php)
SCRIPT_PATH="$(pwd)/cron.php"

#CRON_JOB="* * * * * $PHP_PATH $SCRIPT_PATH" # This is the cron job that will run every minute, i was using it for testing purpose.

# I am setting the time as 10:00 AM every day.
CRON_JOB="0 10 * * * $PHP_PATH $SCRIPT_PATH"

# Check if the cron job already exists
# Remember to stop all the jobs --> use command crontab -r
crontab -l 2>/dev/null | grep -F "$SCRIPT_PATH" >/dev/null

if [ $? -eq 0 ]; then
    echo "✅ Cron job already exists."
else
    # Add new cron job
    (
        crontab -l 2>/dev/null
        echo "$CRON_JOB"
    ) | crontab -
    echo "✅ Cron job added to run cron.php every minute."
fi
exit 0
