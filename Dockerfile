FROM python:3
WORKDIR /app
COPY ./requirements.txt ./
RUN pip install -r requirements.txt
COPY . ./
ENV PYTHONPATH /app
CMD python api/index.py