FROM centos:7
MAINTAINER manjula@thinkcube.com

RUN yum install https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm -y && yum clean all

RUN yum install python-pip -y && yum clean all

RUN pip install mkdocs

RUN useradd --shell /bin/bash -u 1000 -o -c "" -m user \
 && usermod -aG root user

EXPOSE 8000

WORKDIR /home/user

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
