FROM breakdowns/mega-sdk-python:latest

COPY . .
     
RUN git clone https://github.com/gillzxo/apptest apptest

CMD python3 -m bot
