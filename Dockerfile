FROM python:2.7

ENV PYTHONUNBUFFERED 1
ENV DB_PATH=/data/db.sqlite3

ADD requirements.txt /
RUN pip install -r /requirements.txt

RUN mkdir /code
WORKDIR /code
ADD . /code

VOLUME /data
EXPOSE 8000

ENTRYPOINT ["/bin/bash", "/code/run.sh"]
