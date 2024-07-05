# Project: System Monitoring and Alerting Script

## Objectives

- Monitor CPU usage, memory usage, and disk space.
- Log the metrics to a file.
- Send an alert (via email or another method) if any metric exceeds a defined threshold.
- Schedule the script to run at regular intervals using cron jobs.

## Steps to Complete the Project

### 1. Create the Script File

Start by creating a new Bash script file. For example, `system_monitor.sh`.

### 2. Gather System Metrics

Use commands like `top`, `free`, `df`, and `vmstat` to gather CPU usage, memory usage, and disk space information.

### 3. Set Threshold Values

Define threshold values for CPU usage, memory usage, and disk space. For example, 80% CPU usage, 90% memory usage, and 85% disk space usage.

### 4. Log Metrics

Log the metrics to a file with timestamps.

### 5. Check Thresholds and Send Alerts

Compare the gathered metrics against the defined thresholds. If any metric exceeds the threshold, send an alert via email or another method (e.g., SMS, push notification).

### 6. Schedule the Script

Use cron to schedule the script to run at regular intervals, such as every 5 minutes.

**Note:** Ensure permissions are appropriately set for any sensitive operations like sending emails or logging system metrics.

**Disclaimer:** Monitor system resources responsibly and ensure that scripts are used in accordance with system and network policies.
