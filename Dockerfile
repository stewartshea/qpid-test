FROM centos:7


# Enable EPEL
RUN rpm -i https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y update && \
    yum -y install qpid-proton-c-devel python-qpid-proton && \
    yum -y install libwebsockets* qpid-dispatch-router* 

CMD ["qdrouterd"]