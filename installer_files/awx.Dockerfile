FROM ansible/awx:17.1.0
USER root

RUN python3 -m pip uninstall -y ansible
RUN python3 -m pip install -U ansible ansible-tower-cli
USER 1000
