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
```

---

## MongoDB Installation Script

### Description
Automates the installation of MongoDB 6.0 on an Ubuntu server.

### Usage
1. Place the script on your server.
2. Make it executable:

```bash
chmod +x mongodb-install.sh
./mongodb-install.sh
```

---

## LAMP Stack Installation Script

### Description
This script installs the complete LAMP stack (Linux, Apache, MySQL, PHP) along with phpMyAdmin. It sets up everything necessary for a basic web server environment.

### Usage
1. Place the script on your server.
2. Make it executable:

```bash
chmod +x lamp-install.sh
```

---

## PostgreSQL Installation Script

### Description
This script installs PostgreSQL and configures it with a new user and database.

### Usage
1. Place the script on your server.
2. Make it executable:

```bash
chmod +x postgresql-install.sh
./postgresql-install.sh
```

---

## Prometheus Installation Script

### Description
Automates the installation of Prometheus, a powerful monitoring and alerting tool, on a Linux server. The script downloads the latest release of Prometheus, configures it, and sets it up as a service.

### Usage
1. Place the script on your server.
2. Make it executable:

```bash
chmod +x prometheus-install.sh
./prometheus-install.sh
```

---

## Redis Installation Script

### Description
This script installs and configures Redis, an in-memory data structure store, on a Linux server.

### Usage
1. Place the script on your server.
2. Make it executable:

```bash
chmod +x redis-install.sh
./redis-install.sh
```

---

## RethinkDB Installation Script

### Description
Automates the installation and setup of RethinkDB, a distributed NoSQL database, on an Ubuntu server.

### Usage
1. Place the script on your server.
2. Make it executable:

```bash
chmod +x rethinkdb-install.sh
./rethinkdb-install.sh
```

---

## Docker and Kubernetes Installation Script

### Description
This script installs Docker, CRI-Dockerd, and Kubernetes on a Debian or Ubuntu server. It also initializes a Kubernetes cluster and sets up Calico as the pod network.

### Usage
1. Place the script on your server.
2. Make it executable:

```bash
chmod +x docker-kubernetes-install.sh
./docker-kubernetes-install.sh
```
