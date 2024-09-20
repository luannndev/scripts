#!/bin/bash

THRESHOLD=90

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
    echo "$(date) - Warning: CPU usage at $CPU_USAGE%. Rebooting the server."
    sudo reboot
else
    echo "$(date) - CPU usage is at $CPU_USAGE%. No reboot needed."
fi
