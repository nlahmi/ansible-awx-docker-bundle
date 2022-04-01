FROM ansible/awx:17.1.0
USER root

#RUN python3 -m pip uninstall -y ansible
RUN python3 -m pip install -U pip
RUN python3 -m pip install -U ansible==2.10.4 \
    https://releases.ansible.com/ansible-tower/cli/ansible-tower-cli-latest.tar.gz
USER 1000
