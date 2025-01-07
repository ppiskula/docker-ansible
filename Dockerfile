FROM python:3.13-alpine3.21

ENV PIP_ROOT_USER_ACTION=ignore
ENV OPENSSH_VERSION 9.9_p1-r2
ENV ANSIBLE_VERSION 11.1.0

RUN apk update; \
apk upgrade; \
apk add --no-cache \
openssh=${OPENSSH_VERSION}

RUN pip3 install --upgrade pip; \
pip3 install ansible==${ANSIBLE_VERSION};

CMD ["ansible"]
