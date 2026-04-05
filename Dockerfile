FROM mysterysd/wzmlx:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY requirements.txt .
RUN pip3 install --upgrade pip setuptools wheel setuptools_scm
RUN pip3 install --no-cache-dir "pymediainfo>=6.1.0"
RUN pip3 install --no-cache-dir --no-deps "pyrofork==2.2.11"
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["bash", "start.sh"]
