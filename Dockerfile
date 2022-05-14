FROM breakdowns/mega-sdk-python:latest
RUN apt-get install python3-pip
WORKDIR /usr/src/app
COPY . .
     
CMD git clone https://github.com/gillzxo/apptest ./apptest && \
    cd apptest && python3 -m bot
#WORKDIR /apptest
RUN pip install --upgrade pip
COPY . .
#RUN python -m pip install --upgrade pip
CMD python3 -m bot



$CMD ./run.sh
