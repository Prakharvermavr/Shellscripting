#!/bin/bash


CPU_THRESHOLD=80
MEMORY_THRESHOLD=90
DISK_THRESHOLD=85
LOG_FILE="/var/log/system_monitor.log"
ALERT_EMAIL="your_email@example.com"


log_and_alert() {
    local message=$1
    echo "$(date): $message" >> $LOG_FILE
    echo "$message" | mail -s "System Alert" $ALERT_EMAIL
}


CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
if (( ${CPU_USAGE%.*} > CPU_THRESHOLD )); then
    log_and_alert "CPU usage is above threshold: $CPU_USAGE%"
fi


MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
if (( ${MEMORY_USAGE%.*} > MEMORY_THRESHOLD )); then
    log_and_alert "Memory usage is above threshold: $MEMORY_USAGE%"
fi


DISK_USAGE=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//g')
if (( DISK_USAGE > DISK_THRESHOLD )); then
    log_and_alert "Disk usage is above threshold: $DISK_USAGE%"
fi


