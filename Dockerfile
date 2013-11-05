# Base image that can run ansible playbooks.
#
# http://www.ansibleworks.com/

FROM boothead/saucy
MAINTAINER Ben Ford <ben@dlstartup.com>

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y python-apt python-jinja2 python-paramiko python-pip python-yaml && apt-get clean
RUN pip install ansible