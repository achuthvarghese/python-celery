FROM python:3.7.9-stretch

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN ls

RUN pip install -U -r /usr/src/app/requirements.txt

RUN chmod +x /usr/src/app/entrypoint.sh
