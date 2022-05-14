FROM breakdowns/mega-sdk-python:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get update
COPY . .
     
RUN git clone https://github.com/gillzxo/apptest apptest



CMD python3 -m bot
