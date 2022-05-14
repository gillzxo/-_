FROM breakdowns/mega-sdk-python:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app


COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

RUN chmod +x ./run

CMD ./run
