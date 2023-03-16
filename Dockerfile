FROM python:3.9-alpine3.13

LABEL maintanier="Anatoly Rozhkov"

# prints python output to the console
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app

WORKDIR /app

EXPOSE 8000

# breakdown this step with '\', so that no extra image layers are created
# rm tmp to make image lightweight
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user \

ENV PATH="/py/bin:$PATH"

USER django-user