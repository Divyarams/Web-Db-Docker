FROM python:3
MAINTAINER Divyarams
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT ["python3"]
CMD ["mydb.py"]
