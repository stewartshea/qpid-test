FROM centos:7


# Enable EPEL
RUN rpm -i https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y update && \
    yum -y install qpid-proton-c-devel python-qpid-proton && \
    rpm -Uvh libwebsockets-2.1.0-3.el7.x86_64.rpm && \
    rpm -Uvh qpid-dispatch-router-0.8.0-9.el7.x86_64.rpm

CMD ["qdrouterd"]