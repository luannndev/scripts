# CPU Overload Reboot Script

## Description
This script monitors CPU usage on a Linux server and automatically reboots the server if usage exceeds a specified threshold.

## Usage
1. Set the desired CPU usage threshold in the script (default is 90%).
2. Place the script on your server.
3. Schedule the script to run periodically using a cron job to monitor CPU usage.

## Example Cron Job
To check CPU usage every 5 minutes, add the following line to your crontab:

```bash
*/5 * * * * /path/to/cpu-reboot.sh
