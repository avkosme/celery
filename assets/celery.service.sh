#!/bin/bash


cat > /usr/lib/systemd/system/celery.service <<EOF
[Unit]
Description=Celery queue manager

[Service]
Type=forking
PIDFile=/tmp/celerywork.pid
ExecStartPre=/opt/pre.service.sh
ExecStart=/opt/start.service.sh
Restart=always
EnvironmentFile=/etc/environment
EOF