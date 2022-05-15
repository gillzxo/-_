FROM breakdowns/mega-sdk-python:latest
RUN apt-get install python3-pip
WORKDIR /usr/src/app
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt 
RUN git clone https://github.com/gillzxo/apptest.git ./apptest && \

RUN pip install --upgrade pip


RUN chmod +x ./run

CMD ./run
