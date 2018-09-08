#!/bin/sh

printenv > /etc/environment && \

pip3.6 install -r ${REQUIREMENTS} && \

/opt/celery.service.sh && \
/opt/pre.sh && \
/opt/start.sh && \
chmod +x /opt/pre.service.sh && \
chmod +x /opt/start.service.sh && \

chmod 664 /usr/lib/systemd/system/celery.service  && \

systemctl enable celery.service
systemctl start celery.service


exec "$@"
