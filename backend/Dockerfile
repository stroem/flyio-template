FROM python:3.12

WORKDIR /work
COPY . /work

RUN pip3 install -r requirements.txt

EXPOSE 4000
CMD ["python3", "server.py"]
