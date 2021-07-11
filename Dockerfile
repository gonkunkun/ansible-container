FROM python:3.8

SHELL ["/bin/bash", "-c"]
RUN python3 -m venv ansible-2.11
# RUN chmod 664 ansible-2.11/bin/activate aa
# ENV PATH=/ansible-2.11/bin/activate:$PATH
RUN source ansible-2.11/bin/activate
RUN pip install -U pip
RUN pip install ansible-core
RUN pip install ansible==4.0.0
RUN pip install -r https://raw.githubusercontent.com/ansible-collections/amazon.aws/main/requirements.txt

# docker container run -d -it -p 55556:55556  sasaki/ansible:latest
# docker exec -it 9ffbd0a76a9a sh