FROM ansible/awx:17.1.0
USER root

RUN python3 -m pip install -U --upgrade pip ansible
RUN python3 -m pip install ansible-tower-cli
USER 1000
