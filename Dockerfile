FROM python:3.11.0-alpine

RUN mkdir app
WORKDIR /app

COPY credentials.json .
COPY static/ .
COPY templates/ .
COPY *.py .
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "app.py" ]

