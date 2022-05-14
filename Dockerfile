FROM breakdowns/mega-sdk-python:latest
RUN apt-get install python3-pip
COPY . .
     
RUN git clone https://github.com/gillzxo/apptest apptest

CMD python3 $PYTHON_FILE
