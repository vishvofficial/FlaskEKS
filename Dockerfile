FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install wheel
RUN pip3 install flask
RUN pip3 install -r /app/requirements.txt

ENTRYPOINT ["gunicorn", "-b :8080 main:APP"]