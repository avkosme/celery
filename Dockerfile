FROM avkosme/django

ADD requirements.txt /opt/requirements.txt
RUN pip3.7 install -r /opt/requirements.txt