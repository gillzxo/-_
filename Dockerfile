FROM breakdowns/mega-sdk-python:latest
RUN apt-get install python3-pip
WORKDIR /usr/src/app
COPY . .
     
RUN git clone https://github.com/gillzxo/apptest apptest
RUN pip install --upgrade pip
COPY . .
#RUN python -m pip install --upgrade pip
CMD python3 -m bot

RUN chmod +x ./run

CMD ./run
