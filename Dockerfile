FROM python:3.10-alpine
LABEL maintainer="konsymeonidou"

ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apk add --no-cache \
    postgresql-dev gcc python3-dev musl-dev linux-headers

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

ARG DEV=false
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    if [ $DEV = "true" ]; \
        then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user 

ENV PATH="/py/bin:$PATH"

USER django-user