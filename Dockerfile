FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --upgrade pip
RUN apk add --no-cache libffi-dev build-base
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT ["pytest"]