FROM python:3.11.0-alpine

RUN mkdir app
WORKDIR /app

ARG credentials
COPY $credentials credentials.json
ENV GOOGLE_APPLICATION_CREDENTIALS=credentials.json

COPY static/* static/
COPY templates/* templates/
COPY * .
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "app.py" ]
