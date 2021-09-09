FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
COPY app.py /opt
EXPOSE 5001
ENTRYPOINT python3 /opt/app.py
