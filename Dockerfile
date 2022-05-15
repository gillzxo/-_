FROM breakdowns/mega-sdk-python:latest
RUN apt-get install python3-pip
WORKDIR /usr/src/app
#files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

COPY . .
RUN apt-get update -qq && apt-get install -y unzip
RUN pip3 install --no-cache-dir -r requirements.txt 
RUN git clone https://github.com/gillzxo/apptest ./apptest


RUN pip install --upgrade pip

RUN chmod +x ./run

CMD ./run
