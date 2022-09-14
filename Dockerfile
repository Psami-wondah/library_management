FROM python:3.10 as base

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

RUN pip3 install -U frappe-bench

COPY . /app
