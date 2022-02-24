FROM python:3.8.12-buster

COPY model.joblib /model.joblib
COPY TaxiFareModel /TaxiFareModel
COPY api /api
COPY requirements.txt /requirements.txt
COPY /home/reichardtma/code/reichardtma/gcp/le-wagon-ds-bootcamp-337811-c90a5a7577d9.json /le-wagon-ds-bootcamp-337811-c90a5a7577d9.json

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0 --port $PORT
