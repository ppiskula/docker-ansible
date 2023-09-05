FROM python:3.11-alpine3.18

ENV PIP_ROOT_USER_ACTION=ignore
ENV OPENSSH_VERSION 9.3_p2-r0
ENV ANSIBLE_VERSION 8.3.0

RUN apk update; \
apk upgrade; \
apk add --no-cache \
openssh=${OPENSSH_VERSION}

RUN pip3 install --upgrade pip; \
pip3 install ansible==${ANSIBLE_VERSION};

CMD ["ansible"]
