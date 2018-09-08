#!/bin/sh
/opt/celery.service.sh && \
/opt/pre.sh && \
/opt/start.sh && \
chmod +x /opt/pre.service.sh && \
chmod +x /opt/start.service.sh && \

systemctl enable celery.service
chmod 664 /usr/lib/systemd/system/celery.service 

exec "$@"
