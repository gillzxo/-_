FROM breakdowns/mega-sdk-python:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get update \        
     apt-get install -y git
     
RUN git clone git clone https://github.com/gillzxo/apptest apptest  

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

RUN chmod +x ./run

CMD ./run
