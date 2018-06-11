FROM python:3
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN pip install -r requirements.txt

EXPOSE 8888
CMD jupyter notebook --ip=0.0.0.0 --allow-root
