# Server Automation Scripts

## Description

This repository contains a collection of shell scripts that automate various tasks on a Linux server, including CPU monitoring, database installations, and software setups.

### Included Scripts:
1. **CPU Overload Reboot Script**: Reboots the server when CPU usage exceeds a specified threshold.
2. **MongoDB Installation Script**: Automates the installation of MongoDB 6.0 on Ubuntu.
3. **LAMP Stack Installation Script**: Installs Apache, MySQL, PHP, and phpMyAdmin on a server.
4. **PostgreSQL Installation Script**: Sets up PostgreSQL and creates a user and database.
5. **Prometheus Installation Script**: Installs and configures Prometheus for monitoring.
6. **Redis Installation Script**: Installs and configures Redis as a key-value store.
7. **RethinkDB Installation Script**: Installs and sets up RethinkDB with a basic configuration.
8. **Docker and Kubernetes Installation Script**: Installs Docker, CRI-Dockerd, and Kubernetes, and initializes a Kubernetes cluster.

---

## CPU Overload Reboot Script

### Description
Monitors CPU usage and automatically reboots the server if usage exceeds a defined threshold (default is 90%).

### Usage
1. Set the desired CPU usage threshold in the script.
2. Place the script on your server.
3. Schedule the script to run periodically using a cron job to monitor CPU usage.

### Example Cron Job
To check CPU usage every 5 minutes:

```bash
*/5 * * * * /path/to/cpu-overload-reboot.sh

---

## MongoDB Installation Script

### Description
Automates the installation of MongoDB 6.0 on an Ubuntu server.

###
```bash
chmod +x mongodb-install.sh
./mongodb-install.sh
