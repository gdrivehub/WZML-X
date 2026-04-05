FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --upgrade setuptools wheel
RUN pip3 install --no-cache-dir --use-pep517 -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
