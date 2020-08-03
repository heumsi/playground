FROM python:3.7.8-slim

MAINTAINER heumsi@gmail.com

ENV POETRY_VERSION=1.0.10

RUN apt-get -y update && \
    apt-get install -y vim && \
    apt-get install -y telnet && \
    apt-get install -y wget

RUN python -m pip install --upgrade pip
RUN pip install "poetry==$POETRY_VERSION"

COPY . /app
WORKDIR /app

RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction --no-dev --no-ansi

ENTRYPOINT ["python"]
CMD ["app.py"]

EXPOSE 5000
