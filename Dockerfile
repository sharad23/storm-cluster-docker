FROM python:3

RUN pip install virtualenv
RUN virtualenv test-env

COPY . /sharad
RUN  /sharad/env.sh





