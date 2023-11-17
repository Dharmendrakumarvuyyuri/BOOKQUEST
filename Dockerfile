FROM python:3.9-slim
WORKDIR /app
COPY . /app

RUN pip install --no-cahce-dir -r requirements.txt

EXPOSE 5000
ENV FLASK_ENV=production
ENV FLASK_APP=main.py
CMD ["flask","run","--host=0.0.0.0"]