#!/bin/bash

cat > /opt/start.service.sh <<EOF
#!/bin/bash
rm -f /tmp/celerywork.pid && \
cd ${WORK_DIR} && \
celery -A ${MODULE} worker --loglevel=debug
EOF