FROM breakdowns/mega-sdk-python:latest
RUN apt-get install python3-pip
COPY . .
     
RUN git clone https://github.com/gillzxo/apptest apptest
RUN python -m pip install --upgrade pip
RUN cd /apptest && python3 -m bot

RUN chmod +x ./run

CMD ./run
