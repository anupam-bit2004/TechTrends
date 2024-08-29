# Set the base image
FROM python:3.8

LABEL mainitainer="Anupam Dutta"

COPY ./techtrends /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN python init_db.py

EXPOSE 3111

ENTRYPOINT ["python", "app.py"]
