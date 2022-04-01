FROM centos:8.3.2011

ARG suricata_version
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN dnf -y install dnf-plugins-core \
    epel-release
RUN dnf -y copr enable "@oisf/suricata-$suricata_version"
RUN dnf -y install suricata